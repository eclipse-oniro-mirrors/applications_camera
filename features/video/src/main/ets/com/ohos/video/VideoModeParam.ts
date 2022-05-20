/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { Constants } from '../../../../../../../featurecommon/src/main/ets/com/ohos/featurecommon/Constants'

export class VideoModeParam {
  public readonly tabBar: string[] = ['', '', 'zoom', 'timer', 'setup']
  public readonly functions: string[] = [Constants.RECORDING_FUNCTION, Constants.ZOOM_FUNCTION]
}