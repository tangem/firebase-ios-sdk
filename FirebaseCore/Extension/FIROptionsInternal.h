/*
 * Copyright 2017 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <FirebaseCore/FIROptions.h>

/**
 * Keys for the strings in the plist file.
 */
extern NSString *const kFIRAPIKey;
extern NSString *const kFIRTrackingID;
extern NSString *const kFIRGoogleAppID;
extern NSString *const kFIRClientID;
extern NSString *const kFIRGCMSenderID;
extern NSString *const kFIRAndroidClientID;
extern NSString *const kFIRDatabaseURL;
extern NSString *const kFIRStorageBucket;
extern NSString *const kFIRBundleID;
extern NSString *const kFIRProjectID;

/**
 * Keys for the config file names.
 */
extern NSString *const kPlistFileName;
extern NSString *const kPlistFileType;
extern NSString *const kJsonFileName;
extern NSString *const kJsonFileType;

/**
 * This header file exposes the initialization of FirebaseOptions to internal use.
 */
@interface FIROptions ()

/**
 * `resetDefaultOptions` and `initInternalWithOptionsDictionary` are exposed only for unit tests.
 */
+ (void)resetDefaultOptions;

/**
 * Initializes the options with dictionary. The above strings are the keys of the dictionary.
 * This is the designated initializer.
 */
- (instancetype)initInternalWithOptionsDictionary:(NSDictionary *)serviceInfoDictionary
    NS_DESIGNATED_INITIALIZER;

/**
 * `defaultOptions` and `defaultOptionsDictionary` are exposed in order to be used in FirebaseApp
 * and other first party services.
 */
+ (FIROptions *)defaultOptions;

+ (NSDictionary *)defaultOptionsDictionary;

/**
 * Indicates whether or not Analytics collection was explicitly enabled via a plist flag or at
 * runtime.
 */
@property(nonatomic, readonly) BOOL isAnalyticsCollectionExplicitlySet;

/**
 * Whether or not Analytics Collection was enabled. Analytics Collection is enabled unless
 * explicitly disabled in GoogleService-Info.plist.
 */
@property(nonatomic, readonly) BOOL isAnalyticsCollectionEnabled;

/**
 * Whether or not Analytics Collection was completely disabled. If true, then
 * isAnalyticsCollectionEnabled will be false.
 */
@property(nonatomic, readonly) BOOL isAnalyticsCollectionDeactivated;

/**
 * The version ID of the client library, e.g. @"1100000".
 */
@property(nonatomic, readonly, copy) NSString *libraryVersionID;

/**
 * The flag indicating whether this object was constructed with the values in the default config
 * file.
 */
@property(nonatomic) BOOL usingOptionsFromDefaultConfig;

/**
 * Whether or not Measurement was enabled. Measurement is enabled unless explicitly disabled in
 * GoogleService-Info.plist.
 */
@property(nonatomic, readonly) BOOL isMeasurementEnabled;

/**
 * Whether or not editing is locked. This should occur after `FirebaseOptions` has been set on a
 * `FirebaseApp`.
 */
@property(nonatomic, getter=isEditingLocked) BOOL editingLocked;

@end
