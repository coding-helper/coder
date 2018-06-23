<#list opts as opt >
<#if opt.type! == "list" >
<#list opt.attrs as attr >
                {
                    title: '${attr.name!}',
                    key: '${attr.code!}',
<#if attr.type! != "textarea" >
<#if attr_has_next>
                    width: 150,
</#if>
</#if>
                    sortable: true,
<#if attr.type! == "select" || attr.type! == "radio">
                    render: (h, params) => {
                        let value = this.dict.${attr.code!}.filter(item => params.row.${attr.code!} == item.value).map(item => item.label);
                        return h('span', value); 
                    },
</#if>                    
                    align: 'center'
                },
</#list>
<#break>
</#if>
</#list>
