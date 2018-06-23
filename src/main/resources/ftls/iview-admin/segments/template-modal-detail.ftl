<#list opts as opt >
<#if opt.mode! == "modal" && opt.type! == "detail" >
<#assign optName = opt.code + opt.type?cap_first />
<#assign spaces = "    "/>
<Modal width="1000" v-model="optModal.${optName!}.show" :mask-closable="false" @on-ok="optModal.${optName!}.show = false" :title="optModal.${optName!}.title">
    <Card :bordered="false" dis-hover>
        <Row>
            <Col span="3">&nbsp;</Col>
<#if attrs?size == 0 >
            </Col>
        </Row>
<#else>
<#list opt.attrs as attr >
            <Col span="10">${attr.name!}：{{ <#if attr.type! == "select" || attr.type! == "radio" >this.dict.${attr.code!}.filter(item => detailData.${attr.code!} == item.value).map(item => item.label)[0]<#elseif attr.type! == "select" ><img :src="optForm.${optName}.${attr.code!}" /><#else>optForm.${optName}.${attr.code!}</#if> }}</Col>
<#if attr_has_next>
<#if (attr_index + 1) % 2 == 0 >
            <Col span="1">&nbsp;</Col>
            </Col>
</#if>
<#else>
            </Col>
        </Row>
</#if>
</#list>
</#if>
        <Spin size="large" fix v-if="optModal.${optName!}.loading">
            <Icon type="load-c" size=18 class="spin-icon-loading"></Icon>
            <div>加载中</div>
        </Spin>
    </Card>
</Modal>
</#if>
</#list>
