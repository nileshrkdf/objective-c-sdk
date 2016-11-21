/****************************************************************************
 * Copyright 2016, Optimizely, Inc. and contributors                        *
 *                                                                          *
 * Licensed under the Apache License, Version 2.0 (the "License");          *
 * you may not use this file except in compliance with the License.         *
 * You may obtain a copy of the License at                                  *
 *                                                                          *
 *    http://www.apache.org/licenses/LICENSE-2.0                            *
 *                                                                          *
 * Unless required by applicable law or agreed to in writing, software      *
 * distributed under the License is distributed on an "AS IS" BASIS,        *
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. *
 * See the License for the specific language governing permissions and      *
 * limitations under the License.                                           *
 ***************************************************************************/

#import <Foundation/Foundation.h>

@protocol OPTLYUserProfile <NSObject>

/**
<<<<<<< eaea1f01bff1164fa6a86549b9594aa7b0b2a460
 * Saves a user ID's project-to-experiment-to-variation mapping.
=======
 * Saves a user id's project-to-experiment-to-variation mapping.
>>>>>>> User profile feature.
 *
 * @param userId The user id that was used to generate the bucket value.
 * @param experimentKey An active experiment for which the user should be bucketed into.
 * @param variationKey The bucketed variation key.
 *
 **/
- (void)save:(nonnull NSString *)userId
  experiment:(nonnull NSString *)experimentKey
   variation:(nonnull NSString *)variationKey;

/**
 * Gets the saved variation for a given user id, project id, and experiment key.
 *
 * @param userId The user id that was used to generate the bucket value.
 * @param experimentKey An active experiment which the user was bucketed into.
 * @returns The variation that the user was bucketed into for the given project id and experiment key.
 *
 **/
- (nullable NSString *)getVariationFor:(nonnull NSString *)userId
                            experiment:(nonnull NSString *)experimentKey;

/**
 * Removes a user id's project-to-experiment-to-variation mapping.
 *
 * @param userId The user id that was used to generate the bucket value.
 * @param experimentKey An active experiment for which the user should be bucketed into.
 *
 **/
- (void)remove:(nonnull NSString *)userId
    experiment:(nonnull NSString *)experimentKey;

@end

@interface OPTLYUserProfile : NSObject
/**
 * Utility method to check if a class conforms to the OPTLYUserProfile protocol
 * This method uses compile and run time checks
 */
+ (BOOL)conformsToOPTLYUserProfileProtocol:(nonnull Class)instanceClass;
@end

@interface OPTLYUserProfileNoOp: NSObject<OPTLYUserProfile>
@end
