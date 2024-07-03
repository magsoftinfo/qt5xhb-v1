//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTLOCATION_H
#define QT5XHB_MACROS_QTLOCATION_H

#define ISQGEOCODEREPLY(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QGeoCodeReply")
#define ISQGEOCODINGMANAGER(n)                              Qt5xHb::isObjectDerivedFrom(n, "QGeoCodingManager")
#define ISQGEOCODINGMANAGERENGINE(n)                        Qt5xHb::isObjectDerivedFrom(n, "QGeoCodingManagerEngine")
#define ISQGEOMANEUVER(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QGeoManeuver")
#define ISQGEOROUTE(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QGeoRoute")
#define ISQGEOROUTEREPLY(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QGeoRouteReply")
#define ISQGEOROUTEREQUEST(n)                               Qt5xHb::isObjectDerivedFrom(n, "QGeoRouteRequest")
#define ISQGEOROUTESEGMENT(n)                               Qt5xHb::isObjectDerivedFrom(n, "QGeoRouteSegment")
#define ISQGEOROUTINGMANAGER(n)                             Qt5xHb::isObjectDerivedFrom(n, "QGeoRoutingManager")
#define ISQGEOROUTINGMANAGERENGINE(n)                       Qt5xHb::isObjectDerivedFrom(n, "QGeoRoutingManagerEngine")
#define ISQGEOSERVICEPROVIDER(n)                            Qt5xHb::isObjectDerivedFrom(n, "QGeoServiceProvider")
#define ISQGEOSERVICEPROVIDERFACTORY(n)                     Qt5xHb::isObjectDerivedFrom(n, "QGeoServiceProviderFactory")
#define ISQPLACE(n)                                         Qt5xHb::isObjectDerivedFrom(n, "QPlace")
#define ISQPLACEATTRIBUTE(n)                                Qt5xHb::isObjectDerivedFrom(n, "QPlaceAttribute")
#define ISQPLACECATEGORY(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QPlaceCategory")
#define ISQPLACECONTACTDETAIL(n)                            Qt5xHb::isObjectDerivedFrom(n, "QPlaceContactDetail")
#define ISQPLACECONTENT(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QPlaceContent")
#define ISQPLACECONTENTREPLY(n)                             Qt5xHb::isObjectDerivedFrom(n, "QPlaceContentReply")
#define ISQPLACECONTENTREQUEST(n)                           Qt5xHb::isObjectDerivedFrom(n, "QPlaceContentRequest")
#define ISQPLACEDETAILSREPLY(n)                             Qt5xHb::isObjectDerivedFrom(n, "QPlaceDetailsReply")
#define ISQPLACEEDITORIAL(n)                                Qt5xHb::isObjectDerivedFrom(n, "QPlaceEditorial")
#define ISQPLACEICON(n)                                     Qt5xHb::isObjectDerivedFrom(n, "QPlaceIcon")
#define ISQPLACEIDREPLY(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QPlaceIdReply")
#define ISQPLACEIMAGE(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QPlaceImage")
#define ISQPLACEMANAGER(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QPlaceManager")
#define ISQPLACEMANAGERENGINE(n)                            Qt5xHb::isObjectDerivedFrom(n, "QPlaceManagerEngine")
#define ISQPLACEMATCHREPLY(n)                               Qt5xHb::isObjectDerivedFrom(n, "QPlaceMatchReply")
#define ISQPLACEMATCHREQUEST(n)                             Qt5xHb::isObjectDerivedFrom(n, "QPlaceMatchRequest")
#define ISQPLACEPROPOSEDSEARCHRESULT(n)                     Qt5xHb::isObjectDerivedFrom(n, "QPlaceProposedSearchResult")
#define ISQPLACERATINGS(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QPlaceRatings")
#define ISQPLACEREPLY(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QPlaceReply")
#define ISQPLACERESULT(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QPlaceResult")
#define ISQPLACEREVIEW(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QPlaceReview")
#define ISQPLACESEARCHREPLY(n)                              Qt5xHb::isObjectDerivedFrom(n, "QPlaceSearchReply")
#define ISQPLACESEARCHREQUEST(n)                            Qt5xHb::isObjectDerivedFrom(n, "QPlaceSearchRequest")
#define ISQPLACESEARCHRESULT(n)                             Qt5xHb::isObjectDerivedFrom(n, "QPlaceSearchResult")
#define ISQPLACESEARCHSUGGESTIONREPLY(n)                    Qt5xHb::isObjectDerivedFrom(n, "QPlaceSearchSuggestionReply")
#define ISQPLACESUPPLIER(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QPlaceSupplier")
#define ISQPLACEUSER(n)                                     Qt5xHb::isObjectDerivedFrom(n, "QPlaceUser")

#define PQGEOCODEREPLY(n)                                   static_cast<QGeoCodeReply*>(Qt5xHb::itemGetPtr(n))
#define PQGEOCODINGMANAGER(n)                               static_cast<QGeoCodingManager*>(Qt5xHb::itemGetPtr(n))
#define PQGEOCODINGMANAGERENGINE(n)                         static_cast<QGeoCodingManagerEngine*>(Qt5xHb::itemGetPtr(n))
#define PQGEOMANEUVER(n)                                    static_cast<QGeoManeuver*>(Qt5xHb::itemGetPtr(n))
#define PQGEOROUTE(n)                                       static_cast<QGeoRoute*>(Qt5xHb::itemGetPtr(n))
#define PQGEOROUTEREPLY(n)                                  static_cast<QGeoRouteReply*>(Qt5xHb::itemGetPtr(n))
#define PQGEOROUTEREQUEST(n)                                static_cast<QGeoRouteRequest*>(Qt5xHb::itemGetPtr(n))
#define PQGEOROUTESEGMENT(n)                                static_cast<QGeoRouteSegment*>(Qt5xHb::itemGetPtr(n))
#define PQGEOROUTINGMANAGER(n)                              static_cast<QGeoRoutingManager*>(Qt5xHb::itemGetPtr(n))
#define PQGEOROUTINGMANAGERENGINE(n)                        static_cast<QGeoRoutingManagerEngine*>(Qt5xHb::itemGetPtr(n))
#define PQGEOSERVICEPROVIDER(n)                             static_cast<QGeoServiceProvider*>(Qt5xHb::itemGetPtr(n))
#define PQGEOSERVICEPROVIDERFACTORY(n)                      static_cast<QGeoServiceProviderFactory*>(Qt5xHb::itemGetPtr(n))
#define PQPLACE(n)                                          static_cast<QPlace*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEATTRIBUTE(n)                                 static_cast<QPlaceAttribute*>(Qt5xHb::itemGetPtr(n))
#define PQPLACECATEGORY(n)                                  static_cast<QPlaceCategory*>(Qt5xHb::itemGetPtr(n))
#define PQPLACECONTACTDETAIL(n)                             static_cast<QPlaceContactDetail*>(Qt5xHb::itemGetPtr(n))
#define PQPLACECONTENT(n)                                   static_cast<QPlaceContent*>(Qt5xHb::itemGetPtr(n))
#define PQPLACECONTENTREPLY(n)                              static_cast<QPlaceContentReply*>(Qt5xHb::itemGetPtr(n))
#define PQPLACECONTENTREQUEST(n)                            static_cast<QPlaceContentRequest*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEDETAILSREPLY(n)                              static_cast<QPlaceDetailsReply*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEEDITORIAL(n)                                 static_cast<QPlaceEditorial*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEICON(n)                                      static_cast<QPlaceIcon*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEIDREPLY(n)                                   static_cast<QPlaceIdReply*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEIMAGE(n)                                     static_cast<QPlaceImage*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEMANAGER(n)                                   static_cast<QPlaceManager*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEMANAGERENGINE(n)                             static_cast<QPlaceManagerEngine*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEMATCHREPLY(n)                                static_cast<QPlaceMatchReply*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEMATCHREQUEST(n)                              static_cast<QPlaceMatchRequest*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEPROPOSEDSEARCHRESULT(n)                      static_cast<QPlaceProposedSearchResult*>(Qt5xHb::itemGetPtr(n))
#define PQPLACERATINGS(n)                                   static_cast<QPlaceRatings*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEREPLY(n)                                     static_cast<QPlaceReply*>(Qt5xHb::itemGetPtr(n))
#define PQPLACERESULT(n)                                    static_cast<QPlaceResult*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEREVIEW(n)                                    static_cast<QPlaceReview*>(Qt5xHb::itemGetPtr(n))
#define PQPLACESEARCHREPLY(n)                               static_cast<QPlaceSearchReply*>(Qt5xHb::itemGetPtr(n))
#define PQPLACESEARCHREQUEST(n)                             static_cast<QPlaceSearchRequest*>(Qt5xHb::itemGetPtr(n))
#define PQPLACESEARCHRESULT(n)                              static_cast<QPlaceSearchResult*>(Qt5xHb::itemGetPtr(n))
#define PQPLACESEARCHSUGGESTIONREPLY(n)                     static_cast<QPlaceSearchSuggestionReply*>(Qt5xHb::itemGetPtr(n))
#define PQPLACESUPPLIER(n)                                  static_cast<QPlaceSupplier*>(Qt5xHb::itemGetPtr(n))
#define PQPLACEUSER(n)                                      static_cast<QPlaceUser*>(Qt5xHb::itemGetPtr(n))

#define OPQGEOCODEREPLY(n, v)                               HB_ISNIL(n) ? v : static_cast<QGeoCodeReply*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOCODINGMANAGER(n, v)                           HB_ISNIL(n) ? v : static_cast<QGeoCodingManager*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOCODINGMANAGERENGINE(n, v)                     HB_ISNIL(n) ? v : static_cast<QGeoCodingManagerEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOMANEUVER(n, v)                                HB_ISNIL(n) ? v : static_cast<QGeoManeuver*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOROUTE(n, v)                                   HB_ISNIL(n) ? v : static_cast<QGeoRoute*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOROUTEREPLY(n, v)                              HB_ISNIL(n) ? v : static_cast<QGeoRouteReply*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOROUTEREQUEST(n, v)                            HB_ISNIL(n) ? v : static_cast<QGeoRouteRequest*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOROUTESEGMENT(n, v)                            HB_ISNIL(n) ? v : static_cast<QGeoRouteSegment*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOROUTINGMANAGER(n, v)                          HB_ISNIL(n) ? v : static_cast<QGeoRoutingManager*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOROUTINGMANAGERENGINE(n, v)                    HB_ISNIL(n) ? v : static_cast<QGeoRoutingManagerEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOSERVICEPROVIDER(n, v)                         HB_ISNIL(n) ? v : static_cast<QGeoServiceProvider*>(Qt5xHb::itemGetPtr(n))
#define OPQGEOSERVICEPROVIDERFACTORY(n, v)                  HB_ISNIL(n) ? v : static_cast<QGeoServiceProviderFactory*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACE(n, v)                                      HB_ISNIL(n) ? v : static_cast<QPlace*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEATTRIBUTE(n, v)                             HB_ISNIL(n) ? v : static_cast<QPlaceAttribute*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACECATEGORY(n, v)                              HB_ISNIL(n) ? v : static_cast<QPlaceCategory*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACECONTACTDETAIL(n, v)                         HB_ISNIL(n) ? v : static_cast<QPlaceContactDetail*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACECONTENT(n, v)                               HB_ISNIL(n) ? v : static_cast<QPlaceContent*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACECONTENTREPLY(n, v)                          HB_ISNIL(n) ? v : static_cast<QPlaceContentReply*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACECONTENTREQUEST(n, v)                        HB_ISNIL(n) ? v : static_cast<QPlaceContentRequest*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEDETAILSREPLY(n, v)                          HB_ISNIL(n) ? v : static_cast<QPlaceDetailsReply*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEEDITORIAL(n, v)                             HB_ISNIL(n) ? v : static_cast<QPlaceEditorial*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEICON(n, v)                                  HB_ISNIL(n) ? v : static_cast<QPlaceIcon*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEIDREPLY(n, v)                               HB_ISNIL(n) ? v : static_cast<QPlaceIdReply*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEIMAGE(n, v)                                 HB_ISNIL(n) ? v : static_cast<QPlaceImage*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEMANAGER(n, v)                               HB_ISNIL(n) ? v : static_cast<QPlaceManager*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEMANAGERENGINE(n, v)                         HB_ISNIL(n) ? v : static_cast<QPlaceManagerEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEMATCHREPLY(n, v)                            HB_ISNIL(n) ? v : static_cast<QPlaceMatchReply*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEMATCHREQUEST(n, v)                          HB_ISNIL(n) ? v : static_cast<QPlaceMatchRequest*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEPROPOSEDSEARCHRESULT(n, v)                  HB_ISNIL(n) ? v : static_cast<QPlaceProposedSearchResult*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACERATINGS(n, v)                               HB_ISNIL(n) ? v : static_cast<QPlaceRatings*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEREPLY(n, v)                                 HB_ISNIL(n) ? v : static_cast<QPlaceReply*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACERESULT(n, v)                                HB_ISNIL(n) ? v : static_cast<QPlaceResult*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEREVIEW(n, v)                                HB_ISNIL(n) ? v : static_cast<QPlaceReview*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACESEARCHREPLY(n, v)                           HB_ISNIL(n) ? v : static_cast<QPlaceSearchReply*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACESEARCHREQUEST(n, v)                         HB_ISNIL(n) ? v : static_cast<QPlaceSearchRequest*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACESEARCHRESULT(n, v)                          HB_ISNIL(n) ? v : static_cast<QPlaceSearchResult*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACESEARCHSUGGESTIONREPLY(n, v)                 HB_ISNIL(n) ? v : static_cast<QPlaceSearchSuggestionReply*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACESUPPLIER(n, v)                              HB_ISNIL(n) ? v : static_cast<QPlaceSupplier*>(Qt5xHb::itemGetPtr(n))
#define OPQPLACEUSER(n, v)                                  HB_ISNIL(n) ? v : static_cast<QPlaceUser*>(Qt5xHb::itemGetPtr(n))

#endif // QT5XHB_MACROS_QTLOCATION_H
