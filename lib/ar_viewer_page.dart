import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:ar_flutter_plugin_updated/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin_updated/datatypes/node_types.dart';
import 'package:ar_flutter_plugin_updated/models/ar_node.dart';
import 'package:ar_flutter_plugin_updated/widgets/ar_view.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:ar_flutter_plugin_updated/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin_updated/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin_updated/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin_updated/managers/ar_location_manager.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class ArViewerPage extends StatefulWidget {
  final String pathGlb;
  final String title;
  const ArViewerPage({Key? key, required this.pathGlb, required this.title})
    : super(key: key);

  @override
  State<ArViewerPage> createState() => _ArViewerPageState();
}

class _ArViewerPageState extends State<ArViewerPage> {
  ARSessionManager? arSessionManager;
  ARObjectManager? arObjectManager;
  ARNode? modelNode;

  @override
  void dispose() {
    arSessionManager?.dispose();
    super.dispose();
  }

  Future<String> getLocalAssetPath(String asset) async {
    final byteData = await rootBundle.load(asset);
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/${asset.split('/').last}');
    await file.writeAsBytes(byteData.buffer.asUint8List());
    return file.path;
  }

  void onARViewCreated(
    ARSessionManager sessionManager,
    ARObjectManager objectManager,
    ARAnchorManager anchorManager,
    ARLocationManager locationManager,
  ) async {
    arSessionManager = sessionManager;
    arObjectManager = objectManager;
    await arSessionManager?.onInitialize(showAnimatedGuide: false);
    await arObjectManager?.onInitialize();
    // Copy asset ke file system
    final localPath = await getLocalAssetPath(widget.pathGlb);
    modelNode = ARNode(
      type: NodeType.webGLB,
      uri: localPath, // gunakan path lokal, bukan asset
      scale: Vector3(0.7, 0.7, 0.7),
      position: Vector3(0.0, 0.0, -1.0),
      rotation: Vector4(1.0, 0.0, 0.0, 0.0),
    );
    if (modelNode != null) {
      await arObjectManager?.addNode(modelNode!);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!Platform.isAndroid) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: const Center(child: Text('Fitur AR hanya tersedia di Android.')),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ARView(onARViewCreated: onARViewCreated),
    );
  }
}
