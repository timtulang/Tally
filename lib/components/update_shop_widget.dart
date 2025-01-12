import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'update_shop_model.dart';
export 'update_shop_model.dart';

class UpdateShopWidget extends StatefulWidget {
  const UpdateShopWidget({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.maxQuantity,
    required this.userID,
    required this.itemID,
  });

  final String? itemName;
  final int? itemPrice;
  final int? maxQuantity;
  final int? userID;
  final int? itemID;

  @override
  State<UpdateShopWidget> createState() => _UpdateShopWidgetState();
}

class _UpdateShopWidgetState extends State<UpdateShopWidget> {
  late UpdateShopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateShopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xB20B191E),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 16.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 44.0,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 0.0, 10.0),
                        child: Text(
                          'Buy Item',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Divider(
                        height: 4.0,
                        thickness: 1.0,
                        color: Color(0xFFE0E3E7),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Name: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget!.itemName,
                                      'null',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Price: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    functions
                                        .totalPrice(FFAppState().quantity,
                                            widget!.itemPrice!)
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  11.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Quantity',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 80.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: FlutterFlowCountController(
                                  decrementIconBuilder: (enabled) => Icon(
                                    Icons.remove_rounded,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryText
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 20.0,
                                  ),
                                  incrementIconBuilder: (enabled) => Icon(
                                    Icons.add_rounded,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 20.0,
                                  ),
                                  countBuilder: (count) => Text(
                                    count.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  count: _model.countControllerValue ??= 0,
                                  updateCount: (count) async {
                                    safeSetState(() =>
                                        _model.countControllerValue = count);
                                    FFAppState().quantity = valueOrDefault<int>(
                                      _model.countControllerValue,
                                      0,
                                    );
                                    safeSetState(() {});
                                  },
                                  stepSize: 1,
                                  minimum: 0,
                                  maximum: widget!.maxQuantity!,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 4.0,
                        thickness: 1.0,
                        color: Color(0xFFE0E3E7),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.userPoints =
                                    await ClassroomTableTable().queryRows(
                                  queryFn: (q) => q.eqOrNull(
                                    'id',
                                    widget!.userID,
                                  ),
                                );
                                if (_model
                                        .userPoints!.firstOrNull!.currentPts! >=
                                    functions.totalPrice(FFAppState().quantity,
                                        widget!.itemPrice!)) {
                                  await ShopTableTable().update(
                                    data: {
                                      'price': widget!.itemPrice,
                                      'name': widget!.itemName,
                                      'quantity': _model.countControllerValue,
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      widget!.itemID,
                                    ),
                                  );
                                  await SpendingHistoryTableTable().insert({
                                    'stuId': widget!.userID,
                                    'itemId': widget!.itemID,
                                    'totalSpent': valueOrDefault<int>(
                                      functions.totalPrice(
                                          FFAppState().quantity,
                                          widget!.itemPrice!),
                                      0,
                                    ),
                                    'quantity': _model.countControllerValue,
                                    'approved': 'N',
                                  });
                                  await ShopTableTable().update(
                                    data: {
                                      'quantity': functions.reduceQuantity(
                                          widget!.maxQuantity!,
                                          _model.countControllerValue!),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      widget!.itemID,
                                    ),
                                  );
                                  await ShopTableTable().update(
                                    data: {
                                      'status': 'S',
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'quantity',
                                      0,
                                    ),
                                  );
                                  await ClassroomTableTable().update(
                                    data: {
                                      'currentPts':
                                          functions.subtractToCurrentPts(
                                              valueOrDefault<int>(
                                                _model.userPoints?.firstOrNull
                                                    ?.currentPts,
                                                0,
                                              ),
                                              functions.totalPrice(
                                                  FFAppState().quantity,
                                                  widget!.itemPrice!)),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      widget!.userID,
                                    ),
                                  );
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Insufficient points'),
                                        content: Text(
                                            'You do not have enough points to make the purchase.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                Navigator.pop(context);

                                safeSetState(() {});
                              },
                              child: Icon(
                                Icons.shopping_cart_checkout_sharp,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 37.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
