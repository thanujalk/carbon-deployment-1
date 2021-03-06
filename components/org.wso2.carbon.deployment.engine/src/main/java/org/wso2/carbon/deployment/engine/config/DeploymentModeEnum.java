/*
 *  Copyright (c) 2015, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package org.wso2.carbon.deployment.engine.config;

import javax.xml.bind.annotation.XmlEnum;

/**
 * JAXB mapping for Deployment Mode Enum.
 *
 * @since 5.0.0
 */
@XmlEnum
public enum DeploymentModeEnum {
    triggered,
    scheduled;

    public static DeploymentModeEnum fromValue(String v) {
        return valueOf(v);
    }

    public String value() {
        return name();
    }
}
