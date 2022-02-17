variable "storage_account_resource_group_name" {
      type = string
      description = "name of Resource Group"
}
variable "storage_account_resource_group_location" {
   type = string
   description = "location of Resource Group"
}
variable "storage_account_resource_group_tags" {
    type = map
    description = "tags for resource Group"
}



variable "storage_account_monitor_action_group_name" {
    type = string
    description = "action group"
}
variable "storage_account_monitor_action_group_name_short_name" {
    type = string
    description = "short name for action group"
}





variable "storage_account_monitor_action_group_email_receiver_name" {
    type = list
     description = "email reciver name of  action group"
}
variable "storage_account_monitor_action_group_email_receiver_email_address" {
    type = list
    description = "email address for action group"
}



variable "azurerm_log_analytics_workspace_workspace_id" {
    type = string
    description = "log analytics workspace"
}



variable "azurerm_storage_account_diagstorage_id" {
    type = string
    description = "diagnostic storage account id"
}

variable "storage_account_name" {
    type = string
}
variable "storage_account_tier" {
    type = string
}
variable "storage_account_tier_replication_type" {
    type = string
}
variable "storage_account_access_tier" {
    type = string
}
variable "storage_account_min_tls_version" {
    type = string
}




variable "storage_account_monitor_diagnostic_setting_storage_name" {
    type = string
    description = "diagnostic setting name"
}

variable "storage_account_monitor_diagnostic_setting_storage_metric_Transaction_status" {
    type = string
    description = "metric status in Diagnostic setting"
}

variable "storage_account_monitor_diagnostic_setting_storage_metric_Transaction_days" {
    type = string
    description = "Total number of days for metric retention for AllMetric in Diagnostic setting"
}


variable "storage_account_azurerm_monitor_metric_alert_Availability_operator" {
    type = string
    description =  "Azure Metric Alert Operator details"
}

variable "storage_account_azurerm_monitor_metric_alert_Availability_threshold" {
    type = string
    description =  "Azure Metric Alert threshold"
}



variable "storage_account_azurerm_monitor_metric_alert_UsedCapacity_operator" {
    type = string
    description =  "Azure Metric Alert Operator details"
}

variable "storage_account_azurerm_monitor_metric_alert_UsedCapacity_threshold" {
    type = string
    description =  "Azure Metric Alert threshold"
}


variable "storage_account_azurerm_monitor_metric_alert_Transactions_operator" {
    type = string
    description =  "Azure Metric Alert Operator details"
}

variable "storage_account_azurerm_monitor_metric_alert_Transactions_threshold" {
    type = string
     description =  "Azure Metric Alert threshold"
}


locals {
   emailid = [{
     name =  var.storage_account_monitor_action_group_email_receiver_name[0] 
     emailid = var.storage_account_monitor_action_group_email_receiver_email_address[0]
    
 },
 {
     name =  var.storage_account_monitor_action_group_email_receiver_name[1] 
     emailid = var.storage_account_monitor_action_group_email_receiver_email_address[1]
   
 }]

}

variable "storage_account_azurerm_monitor_metriclaert01" {
    type = string
    default = "false"
}


variable "storage_account_azurerm_monitor_metriclaert02" {
    type = string
    default = "false"
}

variable "storage_account_azurerm_monitor_metriclaert03" {
    type = string
    default = "false"
}

variable "azurerm_storage_account_diagstorage_status" {
    type   = bool
    default = "false"
}



variable "storage_account_lock_name" {
      type = string
    
}

variable "storage_account_lock_level" {
      type = string
    
}

variable "storage_account_lock_notes" {
      type = string
    
}



variable "storage_account_role_assignment_principal_id" {
      type = list
    
}



variable "storage_account_role_definition_name" {
      type = string
    
}


variable "storage_account_container_name" {
      type = string
    
}

variable "storage_account_container_access_type" {
      type = string
    
}

variable "storage_account_encryption_scope_name" {
      type = string
    
}




