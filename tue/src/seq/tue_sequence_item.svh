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
`ifndef TUE_SEQUENCE_ITEM_SVH
`define TUE_SEQUENCE_ITEM_SVH
class tue_sequence_item #(
  type  CONFIGURATION = tue_configuration_dummy,
  type  STATUS        = tue_status_dummy
) extends tue_object_base #(uvm_sequence_item, CONFIGURATION, STATUS);
  function void set_sequencer(uvm_sequencer_base sequencer);
    tue_component_proxy_base #(CONFIGURATION, STATUS) component_proxy;
    super.set_sequencer(sequencer);
    component_proxy = tue_component_proxy_base #(CONFIGURATION, STATUS)::get(sequencer);
    if (component_proxy != null) begin
      set_context(component_proxy.get_configuration(), component_proxy.get_status());
    end
  endfunction

  `tue_object_default_constructor(tue_sequence_item)
endclass
`endif
