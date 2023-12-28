
import 'package:flutter/material.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  _ServicesWidgetState createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget>
    with TickerProviderStateMixin {

  final scaffoldKey = GlobalKey<ScaffoldState>();





  @override
  void dispose() {
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed(
              'createAppointment',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 240),
                ),
              },
            );
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8,
          child: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).alternate,
            size: 32,
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Service Appointments',
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: Text(
                    'In Progress',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: StreamBuilder<List<CarAppointmentsRecord>>(
                    stream: queryCarAppointmentsRecord(
                      parent: currentUserReference,
                      queryBuilder: (carAppointmentsRecord) =>
                          carAppointmentsRecord.where(
                        'status',
                        isEqualTo: 'In Progress',
                      ),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitCubeGrid(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      List<CarAppointmentsRecord>
                          listViewCarAppointmentsRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final listViewCarAppointmentsRecord =
                          listViewCarAppointmentsRecordList.isNotEmpty
                              ? listViewCarAppointmentsRecordList.first
                              : null;
                      return ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'appointmentDetails',
                                  queryParameters: {
                                    'appointmentRef': serializeParam(
                                      listViewCarAppointmentsRecord,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'appointmentRef':
                                        listViewCarAppointmentsRecord,
                                  },
                                );
                              },
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x2B202529),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: FutureBuilder<ProductNameRecord>(
                                        future:
                                            ProductNameRecord.getDocumentOnce(
                                                listViewCarAppointmentsRecord!
                                                    .carRef!),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitCubeGrid(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          final rowProductNameRecord =
                                              snapshot.data!;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 4),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        listViewCarAppointmentsRecord!
                                                            .type,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 12,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          listViewCarAppointmentsRecord!
                                                              .carName,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewCarAppointmentsRecord!
                                                                .appointmentNumber,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: '#',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(12),
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(12),
                                                ),
                                                child: Image.network(
                                                  rowProductNameRecord
                                                      .productImage,
                                                  width: 160,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 16, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Icon(
                                                Icons.access_time_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                listViewCarAppointmentsRecord!
                                                    .status,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Text(
                                              dateTimeFormat(
                                                  'relative',
                                                  listViewCarAppointmentsRecord!
                                                      .scheduledDate!),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation1']!),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 8),
                  child: Text(
                    'Completed Tickets',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation2']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 16),
                  child: StreamBuilder<List<CarAppointmentsRecord>>(
                    stream: queryCarAppointmentsRecord(
                      parent: currentUserReference,
                      queryBuilder: (carAppointmentsRecord) =>
                          carAppointmentsRecord.orderBy('scheduledDate',
                              descending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitCubeGrid(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      List<CarAppointmentsRecord>
                          listViewCarAppointmentsRecordList = snapshot.data!;
                      if (listViewCarAppointmentsRecordList.isEmpty) {
                        return Container(
                          height: 300,
                          child: AppointmentEmptyWidget(),
                        );
                      }
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewCarAppointmentsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewCarAppointmentsRecord =
                              listViewCarAppointmentsRecordList[listViewIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'appointmentDetails',
                                  queryParameters: {
                                    'appointmentRef': serializeParam(
                                      listViewCarAppointmentsRecord,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'appointmentRef':
                                        listViewCarAppointmentsRecord,
                                  },
                                );
                              },
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x2B202529),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: FutureBuilder<ProductNameRecord>(
                                        future:
                                            ProductNameRecord.getDocumentOnce(
                                                listViewCarAppointmentsRecord
                                                    .carRef!),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitCubeGrid(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          final rowProductNameRecord =
                                              snapshot.data!;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 4),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        listViewCarAppointmentsRecord
                                                            .type,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 12,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          listViewCarAppointmentsRecord
                                                              .carName,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewCarAppointmentsRecord
                                                                .appointmentNumber,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: '#',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(12),
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(12),
                                                ),
                                                child: CachedNetworkImage(
                                                  fadeInDuration: Duration(
                                                      milliseconds: 500),
                                                  fadeOutDuration: Duration(
                                                      milliseconds: 500),
                                                  imageUrl: rowProductNameRecord
                                                      .productImage,
                                                  width: 160,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 16, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Icon(
                                                Icons.access_time_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                'Completed On',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Text(
                                              dateTimeFormat(
                                                  'MMMEd',
                                                  listViewCarAppointmentsRecord
                                                      .scheduledDate!),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
