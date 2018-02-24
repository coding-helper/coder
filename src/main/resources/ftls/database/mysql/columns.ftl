<#if attr.dbFlag == 1 >
  `${c2u(attr.code!)}` <#if attr.datatype! == "string" >VARCHAR<#elseif attr.datatype! == "int" >INT<#elseif attr.datatype! == "long">BIGINT<#elseif attr.datatype! == "double" >DECIMAL<#elseif attr.datatype! == "datetime" >DATETIME<#elseif attr.datatype! == "text" >TEXT<#else>VARCHAR</#if><#if attr.length?exists >(${attr.length!}<#if attr.precise?exists && attr.precise gt 0 >, ${attr.precise}</#if>)<#else><#if attr.datatype! == "string" >(255)<#elseif attr.datatype! == "int" || attr.datatype! == "double" >(8)<#elseif attr.datatype! == "text" || attr.datatype! == "datetime" ><#else>(255)</#if></#if> NULL<#if attr.defaultValue! != "" > DEFAULT '${attr.defaultValue!}'</#if><#if attr.remark! != "" > COMMENT '${attr.remark}'</#if>,
</#if>