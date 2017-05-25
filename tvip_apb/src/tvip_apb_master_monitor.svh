//------------------------------------------------------------------------------
//  Copyright 2017 Taichi Ishitani
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//------------------------------------------------------------------------------
`ifndef TVIP_APB_MASTER_MONITOR_SVH
`define TVIP_APB_MASTER_MONITOR_SVH
class tvip_apb_master_monitor extends tvip_apb_monitor_base #(tvip_apb_master_item);
  `tue_component_default_constructor (tvip_apb_master_monitor)
  `uvm_component_utils(tvip_apb_master_monitor)
endclass
`endif
