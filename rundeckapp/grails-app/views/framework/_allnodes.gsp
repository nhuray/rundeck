<%--
  Created by IntelliJ IDEA.
  User: greg
  Date: Jan 15, 2010
  Time: 4:54:53 PM
  To change this template use File | Settings | File Templates.
--%>
<g:render template="/common/messages"/>
<div class="allnodes">
    <g:render template="${params.embedded?'nodesEmbed':'nodes'}" model="${[nodes:allnodes,totalexecs:totalexecs,jobs:jobs,params:params]}"/>
</div>
<g:render template="/common/boxinfo" model="${[name:'nodes',model:[title:'Nodes',total:total,linkUrl:createLink(controller:'framework',action:'nodes')]]}"/>