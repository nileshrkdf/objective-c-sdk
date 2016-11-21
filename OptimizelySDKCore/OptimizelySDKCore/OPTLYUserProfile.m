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

#import "OPTLYUserProfile.h"

@implementation OPTLYUserProfile

+ (BOOL)conformsToOPTLYUserProfileProtocol:(nonnull Class)instanceClass {
    // compile-time check
<<<<<<< eaea1f01bff1164fa6a86549b9594aa7b0b2a460
    BOOL isValidProtocolDeclaration = [instanceClass conformsToProtocol:@protocol(OPTLYUserProfile)];
=======
    BOOL validProtocolDeclaration = [instanceClass conformsToProtocol:@protocol(OPTLYUserProfile)];
>>>>>>> User profile feature.
    
    // runtime checks
    BOOL implementsHandleSaveVariationMethod = [instanceClass instancesRespondToSelector:@selector(save:experiment:variation:)];
    BOOL implementsHandleGetVariationMethod = [instanceClass instancesRespondToSelector:@selector(getVariationFor:experiment:)];
    BOOL implementsHandleRemoveVariationMethod = [instanceClass instancesRespondToSelector:@selector(remove:experiment:)];
    
<<<<<<< eaea1f01bff1164fa6a86549b9594aa7b0b2a460
    return isValidProtocolDeclaration && implementsHandleSaveVariationMethod && implementsHandleGetVariationMethod && implementsHandleRemoveVariationMethod;
=======
    return validProtocolDeclaration && implementsHandleSaveVariationMethod && implementsHandleGetVariationMethod && implementsHandleRemoveVariationMethod;
>>>>>>> User profile feature.
}

@end

@implementation OPTLYUserProfileNoOp

- (void)save:(nonnull NSString *)userId
  experiment:(nonnull NSString *)experimentKey
   variation:(nonnull NSString *)variationKey {
    return;
}

- (nullable NSString *)getVariationFor:(nonnull NSString *)userId
                            experiment:(nonnull NSString *)experimentKey
{
    return nil;
}

- (void)remove:(nonnull NSString *)userId
    experiment:(nonnull NSString *)experimentKey {
    return;
}

@end
