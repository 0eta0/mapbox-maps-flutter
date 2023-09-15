// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "PolygonAnnotationMessager.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

/// Controls the frame of reference for `fill-translate`.
@implementation FLTFillTranslateAnchorBox
- (instancetype)initWithValue:(FLTFillTranslateAnchor)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface FLTPolygonAnnotation ()
+ (FLTPolygonAnnotation *)fromList:(NSArray *)list;
+ (nullable FLTPolygonAnnotation *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTPolygonAnnotationOptions ()
+ (FLTPolygonAnnotationOptions *)fromList:(NSArray *)list;
+ (nullable FLTPolygonAnnotationOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation FLTPolygonAnnotation
+ (instancetype)makeWithId:(NSString *)id
    geometry:(nullable NSDictionary<NSString *, id> *)geometry
    fillSortKey:(nullable NSNumber *)fillSortKey
    fillColor:(nullable NSNumber *)fillColor
    fillOpacity:(nullable NSNumber *)fillOpacity
    fillOutlineColor:(nullable NSNumber *)fillOutlineColor
    fillPattern:(nullable NSString *)fillPattern {
  FLTPolygonAnnotation* pigeonResult = [[FLTPolygonAnnotation alloc] init];
  pigeonResult.id = id;
  pigeonResult.geometry = geometry;
  pigeonResult.fillSortKey = fillSortKey;
  pigeonResult.fillColor = fillColor;
  pigeonResult.fillOpacity = fillOpacity;
  pigeonResult.fillOutlineColor = fillOutlineColor;
  pigeonResult.fillPattern = fillPattern;
  return pigeonResult;
}
+ (FLTPolygonAnnotation *)fromList:(NSArray *)list {
  FLTPolygonAnnotation *pigeonResult = [[FLTPolygonAnnotation alloc] init];
  pigeonResult.id = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.id != nil, @"");
  pigeonResult.geometry = GetNullableObjectAtIndex(list, 1);
  pigeonResult.fillSortKey = GetNullableObjectAtIndex(list, 2);
  pigeonResult.fillColor = GetNullableObjectAtIndex(list, 3);
  pigeonResult.fillOpacity = GetNullableObjectAtIndex(list, 4);
  pigeonResult.fillOutlineColor = GetNullableObjectAtIndex(list, 5);
  pigeonResult.fillPattern = GetNullableObjectAtIndex(list, 6);
  return pigeonResult;
}
+ (nullable FLTPolygonAnnotation *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTPolygonAnnotation fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.id ?: [NSNull null]),
    (self.geometry ?: [NSNull null]),
    (self.fillSortKey ?: [NSNull null]),
    (self.fillColor ?: [NSNull null]),
    (self.fillOpacity ?: [NSNull null]),
    (self.fillOutlineColor ?: [NSNull null]),
    (self.fillPattern ?: [NSNull null]),
  ];
}
@end

@implementation FLTPolygonAnnotationOptions
+ (instancetype)makeWithGeometry:(nullable NSDictionary<NSString *, id> *)geometry
    fillSortKey:(nullable NSNumber *)fillSortKey
    fillColor:(nullable NSNumber *)fillColor
    fillOpacity:(nullable NSNumber *)fillOpacity
    fillOutlineColor:(nullable NSNumber *)fillOutlineColor
    fillPattern:(nullable NSString *)fillPattern {
  FLTPolygonAnnotationOptions* pigeonResult = [[FLTPolygonAnnotationOptions alloc] init];
  pigeonResult.geometry = geometry;
  pigeonResult.fillSortKey = fillSortKey;
  pigeonResult.fillColor = fillColor;
  pigeonResult.fillOpacity = fillOpacity;
  pigeonResult.fillOutlineColor = fillOutlineColor;
  pigeonResult.fillPattern = fillPattern;
  return pigeonResult;
}
+ (FLTPolygonAnnotationOptions *)fromList:(NSArray *)list {
  FLTPolygonAnnotationOptions *pigeonResult = [[FLTPolygonAnnotationOptions alloc] init];
  pigeonResult.geometry = GetNullableObjectAtIndex(list, 0);
  pigeonResult.fillSortKey = GetNullableObjectAtIndex(list, 1);
  pigeonResult.fillColor = GetNullableObjectAtIndex(list, 2);
  pigeonResult.fillOpacity = GetNullableObjectAtIndex(list, 3);
  pigeonResult.fillOutlineColor = GetNullableObjectAtIndex(list, 4);
  pigeonResult.fillPattern = GetNullableObjectAtIndex(list, 5);
  return pigeonResult;
}
+ (nullable FLTPolygonAnnotationOptions *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTPolygonAnnotationOptions fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.geometry ?: [NSNull null]),
    (self.fillSortKey ?: [NSNull null]),
    (self.fillColor ?: [NSNull null]),
    (self.fillOpacity ?: [NSNull null]),
    (self.fillOutlineColor ?: [NSNull null]),
    (self.fillPattern ?: [NSNull null]),
  ];
}
@end

@interface FLTOnPolygonAnnotationClickListenerCodecReader : FlutterStandardReader
@end
@implementation FLTOnPolygonAnnotationClickListenerCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [FLTPolygonAnnotation fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLTOnPolygonAnnotationClickListenerCodecWriter : FlutterStandardWriter
@end
@implementation FLTOnPolygonAnnotationClickListenerCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLTPolygonAnnotation class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLTOnPolygonAnnotationClickListenerCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTOnPolygonAnnotationClickListenerCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTOnPolygonAnnotationClickListenerCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTOnPolygonAnnotationClickListenerCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTOnPolygonAnnotationClickListenerGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLTOnPolygonAnnotationClickListenerCodecReaderWriter *readerWriter = [[FLTOnPolygonAnnotationClickListenerCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

@interface FLTOnPolygonAnnotationClickListener ()
@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@end

@implementation FLTOnPolygonAnnotationClickListener

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}
- (void)onPolygonAnnotationClickAnnotation:(FLTPolygonAnnotation *)arg_annotation completion:(void (^)(FlutterError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.mapbox_maps_flutter.OnPolygonAnnotationClickListener.onPolygonAnnotationClick"
      binaryMessenger:self.binaryMessenger
      codec:FLTOnPolygonAnnotationClickListenerGetCodec()];
  [channel sendMessage:@[arg_annotation ?: [NSNull null]] reply:^(id reply) {
    completion(nil);
  }];
}
@end

@interface FLT_PolygonAnnotationMessagerCodecReader : FlutterStandardReader
@end
@implementation FLT_PolygonAnnotationMessagerCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [FLTPolygonAnnotation fromList:[self readValue]];
    case 129: 
      return [FLTPolygonAnnotationOptions fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLT_PolygonAnnotationMessagerCodecWriter : FlutterStandardWriter
@end
@implementation FLT_PolygonAnnotationMessagerCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLTPolygonAnnotation class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTPolygonAnnotationOptions class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLT_PolygonAnnotationMessagerCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLT_PolygonAnnotationMessagerCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLT_PolygonAnnotationMessagerCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLT_PolygonAnnotationMessagerCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLT_PolygonAnnotationMessagerGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLT_PolygonAnnotationMessagerCodecReaderWriter *readerWriter = [[FLT_PolygonAnnotationMessagerCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void FLT_PolygonAnnotationMessagerSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLT_PolygonAnnotationMessager> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.create"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(createManagerId:annotationOption:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(createManagerId:annotationOption:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTPolygonAnnotationOptions *arg_annotationOption = GetNullableObjectAtIndex(args, 1);
        [api createManagerId:arg_managerId annotationOption:arg_annotationOption completion:^(FLTPolygonAnnotation *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.createMulti"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(createMultiManagerId:annotationOptions:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(createMultiManagerId:annotationOptions:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        NSArray<FLTPolygonAnnotationOptions *> *arg_annotationOptions = GetNullableObjectAtIndex(args, 1);
        [api createMultiManagerId:arg_managerId annotationOptions:arg_annotationOptions completion:^(NSArray<FLTPolygonAnnotation *> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.update"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(updateManagerId:annotation:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(updateManagerId:annotation:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTPolygonAnnotation *arg_annotation = GetNullableObjectAtIndex(args, 1);
        [api updateManagerId:arg_managerId annotation:arg_annotation completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.delete"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(deleteManagerId:annotation:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(deleteManagerId:annotation:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTPolygonAnnotation *arg_annotation = GetNullableObjectAtIndex(args, 1);
        [api deleteManagerId:arg_managerId annotation:arg_annotation completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.deleteAll"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(deleteAllManagerId:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(deleteAllManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api deleteAllManagerId:arg_managerId completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.setFillAntialias"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setFillAntialiasManagerId:fillAntialias:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(setFillAntialiasManagerId:fillAntialias:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_fillAntialias = GetNullableObjectAtIndex(args, 1);
        [api setFillAntialiasManagerId:arg_managerId fillAntialias:arg_fillAntialias completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.getFillAntialias"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getFillAntialiasManagerId:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(getFillAntialiasManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getFillAntialiasManagerId:arg_managerId completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.setFillTranslate"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setFillTranslateManagerId:fillTranslate:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(setFillTranslateManagerId:fillTranslate:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        NSArray<NSNumber *> *arg_fillTranslate = GetNullableObjectAtIndex(args, 1);
        [api setFillTranslateManagerId:arg_managerId fillTranslate:arg_fillTranslate completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.getFillTranslate"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getFillTranslateManagerId:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(getFillTranslateManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getFillTranslateManagerId:arg_managerId completion:^(NSArray<NSNumber *> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.setFillTranslateAnchor"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setFillTranslateAnchorManagerId:fillTranslateAnchor:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(setFillTranslateAnchorManagerId:fillTranslateAnchor:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTFillTranslateAnchor arg_fillTranslateAnchor = [GetNullableObjectAtIndex(args, 1) integerValue];
        [api setFillTranslateAnchorManagerId:arg_managerId fillTranslateAnchor:arg_fillTranslateAnchor completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessager.getFillTranslateAnchor"
        binaryMessenger:binaryMessenger
        codec:FLT_PolygonAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getFillTranslateAnchorManagerId:completion:)], @"FLT_PolygonAnnotationMessager api (%@) doesn't respond to @selector(getFillTranslateAnchorManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getFillTranslateAnchorManagerId:arg_managerId completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
