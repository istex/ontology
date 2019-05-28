<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:schema="http://schema.org/"
    xmlns:ns="http://www.w3.org/2003/06/sw-vocab-status/ns#"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:terms="http://purl.org/dc/terms/"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    xmlns:dcat="http://www.w3.org/ns/dcat#"
    xmlns:vann="http://purl.org/vocab/vann/"
    xmlns:prov="http://www.w3.org/ns/prov#"
    xmlns:wot="http://xmlns.com/wot/0.1/"
    xmlns:foaf="http://xmlns.com/foaf/0.1/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    exclude-result-prefixes="schema ns owl xsd skos rdfs rdf terms xml dcat vann prov wot foaf dc">
    <xsl:output method="html" indent="yes" encoding="UTF-8" doctype-public="html"/>
   <!-- <xsl:strip-space elements="*"/>-->
<!--=======================================================================================
    Titre: Feuille de style rdf/xml -> HTML
    Auteur:  Stephanie GREGORIO - INIST/CNRS
    version: v1 : 19/09/2017
             v2 : 02/10/2017
             v3 : 01/12/2017
             v4 : 04/12/2017
             v5 : 22/12/2017
             v6 : 16/01/2018
             v7 : 09/04/2018
             v8 : 06/06/2018
             v9 : 23/05/2019
             v10 : 27/05/2019
    =======================================================================================-->
    
    <xsl:template match="/" xml:space="default">
        <xsl:apply-templates select="*"/>
    </xsl:template>
    
    <!-- debut des templates -->
    <xsl:template match="rdf:RDF">
        <html>
            <head>
                <link rel="stylesheet" href="/css/doremus.css" />   
            </head>
            <body>
                <section class="cover">
                    <div class="inside">
                        <div class="description">
                            <h1>Ontologie ISTEX</h1>
                            <p>Ontologie du projet ISTEX.</p>
                            <p>Cette ontologie définit <xsl:value-of select="count(owl:Class[contains(@rdf:about,'istex')])"/> Classes, <xsl:value-of select="count(owl:ObjectProperty[contains(@rdf:about,'istex')])"/> Object Properties et <xsl:value-of select="count(owl:DatatypeProperty[contains(@rdf:about,'istex')])"/> Data Properties.</p><a class="btn" href="https://github.com/istex/ontology/blob/master/istexXML.owl"><span>Disponible sur GitHub</span></a>
                        </div>
                        <div class="logo">
                            <a href="http://data.istex.fr">
                                <img alt="logo data istex" src="/img/ic_Data_ISTEX-2.svg"/>
                                    <div class="dataIstex">
                                        data.istex.fr
                                    </div>
                            </a>
                        </div>   
                    </div>
                </section>
                <h1 style="padding-bottom:10px">Sommaire</h1>
                <section class="summary" style="padding-bottom:10px">
                    <h2>Ontologies importées</h2>
                    <ul>
                        <li><a href="#bibo"><span>BIBO</span></a></li>
                        <li><a href="#skos"><span>SKOS</span></a></li>
                        <li><a href="#dcat"><span>DCAT</span></a></li>
                        <li><a href="#dcterms"><span>DCTERMS</span></a></li>
                        <li><a href="#prov"><span>PROV</span></a></li>
                        <li><a href="#schema"><span>SCHEMA</span></a></li>
                        <li><a href="#foaf"><span>FOAF</span></a></li>
                        <li><a href="#lom"><span>IEEE LOM</span></a></li>
                        <li><a href="#geonames"><span>GEONAMES</span></a></li>
                    </ul>
                    <h2>Classes</h2>
                    <ul>
                        <xsl:apply-templates select="owl:Class"/>
                    </ul>
                    <h2>Object Properties</h2>
                    <ul>
                        <xsl:apply-templates select="owl:ObjectProperty"/>
                    </ul>
                    <h2>Data Properties</h2>
                    <ul>
                        <xsl:apply-templates select="owl:DatatypeProperty"/>
                    </ul>
                </section>
                <!-- schema et définitions des classes / objectsproperties et dataproperties -->
                <xsl:comment>Ne pas oublier lien vers google draw<!--<p style="text-align:center"><img src="https://docs.google.com/drawings/d/e/2PACX-1vRduIKz3kT4Ax2RTnFpp88nCEFzlNhyzpsdXMyLTL5-bVTzaTCWUrqbAA1LWMAzGCMwWFqxaecsEnzo/pub?w=960&h=720"></p>--></xsl:comment>
                <!--<p style="text-align:center"><img src="https://docs.google.com/drawings/d/e/2PACX-1vRduIKz3kT4Ax2RTnFpp88nCEFzlNhyzpsdXMyLTL5-bVTzaTCWUrqbAA1LWMAzGCMwWFqxaecsEnzo/pub?w=960&h=720"/></p>-->
                <!-- ontologies importées -->
                <!-- SG - pour le moment imports des ontologies en dure -->
                <h2>Ontologies importées</h2>
                <section class="ontologyImports card">
                    <ul class="list">
                        <li>
                            <h3 id="bibo"><a href="http://purl.org/ontology/bibo/">BIBO</a>
                                <small><i><a href="http://purl.org/ontology/bibo/">http://purl.org/ontology/bibo/</a></i></small></h3>
                            <div><span>fournit les principaux concepts et propriétés pour décrire des références bibliographiques
                                (livres, articles, etc.)</span>
                            </div>
                        </li>
                        <li>
                            <h3 id="skos"><a href="http://www.w3.org/2004/02/skos/core">SKOS</a>
                                <small><i><a href="http://www.w3.org/2004/02/skos/core">http://www.w3.org/2004/02/skos/core</a></i></small>
                            </h3>
                            <div><span>est un modèle de données commun pour le partage et la liaison de systèmes d'organisation</span></div>
                        </li>
                        <li>
                            <h3 id="dcat"><a href="http://www.w3.org/ns/dcat">DCAT</a>
                                <small><i><a href="http://www.w3.org/ns/dcat">http://www.w3.org/ns/dcat</a></i></small>
                            </h3>
                            <div><span>conçu pour faciliter l'interopérabilité entre les catalogues de données publiés sur
                                le Web</span></div>
                        </li>
                        <li>
                            <h3 id="dcterms"><a href="http://purl.org/dc/terms/">DCTERMS</a>
                                <small><i><a href="http://purl.org/dc/terms/">http://purl.org/dc/terms/</a></i></small>
                            </h3>
                            <div><span>ensemble de termes de vocabulaire utilisés pour décrire des ressources à des fins de découverte</span></div>
                        </li>
                        <li>
                            <h3 id="prov"><a href="http://www.w3.org/ns/prov">PROV</a>
                                <small><i><a href="http://www.w3.org/ns/prov">http://www.w3.org/ns/prov</a></i></small>
                            </h3>
                            <div><span>décrit les informations de provenance sur le web</span></div>
                        </li>
                        <li>
                            <h3 id="schema"><a href="http://schema.org">SCHEMA</a>
                                <small><i><a href="http://schema.org">http://schema.org</a></i></small>
                            </h3>
                            <div><span>a pour mission de créer, maintenir et promouvoir des schémas pour des données structurées
                                sur le Web</span></div>
                        </li>
                        <li>
                            <h3 id="foaf"><a href="http://xmlns.com/foaf/0.1/">FOAF</a>
                                <small><i><a href="http://xmlns.com/foaf/0.1/">http://xmlns.com/foaf/0.1/</a></i></small>
                            </h3>
                            <div><span>décrit des personnes et les relations qu'elles entretiennent entre elles</span></div>
                        </li>
                        <li>
                            <h3 id="lom"><a href="http://www.lom-fr.fr/ontologies/lomfr-1/">IEEE LOM</a>
                                <small><i><a href="http://www.lom-fr.fr/ontologies/lomfr-1/">http://data.opendiscoveryspace.eu/lom_ontology_ods.owl</a></i></small>
                            </h3>
                            <div><span>décrit des ressources pédagogiques</span></div>
                        </li>
                        <li>
                            <h3 id="geonames"><a href="http://www.geonames.org/ontology/documentation.html">GEONAMES</a>
                                <small><i><a href="http://www.geonames.org/ontology/documentation.html">http://www.geonames.org/ontology/documentation.html</a></i></small>
                            </h3>
                            <div><span>ajoute des informations sémantiques géospatiales au W3C</span></div>
                        </li>
                    </ul>
                </section>
                <h2>Classes</h2>
                <!-- mettre schema Classes + définition-->
                <section class="classes card">
                    <ul class="list">
                        <xsl:apply-templates select="owl:Class" mode="classe2"/> 
                    </ul>
                </section>
                
                <!-- a completer -->
                <h2>Object Properties</h2>
                <!-- mettre schema Object Properties + définition-->
                <section class="properties card">
                    <ul class="list">
                        <xsl:apply-templates select="owl:ObjectProperty" mode="OP2"/> 
                    </ul>
                </section>
                <h2>Data Properties</h2>
                <!-- mettre schema Data Properties + définition-->
                <section class="properties card">
                    <ul class="list">
                        <xsl:apply-templates select="owl:DatatypeProperty" mode="DataP2"/> 
                    </ul>
                </section>
            </body>
        </html>
    </xsl:template>
    <!-- SG - pour le moment imports des ontologies en dure -->
   <!-- <xsl:template match="owl:Ontology">
        <xsl:apply-templates select="owl:imports"/>
    </xsl:template>
    <xsl:template match="owl:imports">
        <xsl:choose>
            <xsl:when test="contains(@rdf:resource,'bibo')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">BIBO: </a> fournit les principaux concepts et propriétés pour décrire des citations et des références bibliographiques (citations, livres, articles, etc.) sur le Web sémantique.</dd></xsl:when>
            <xsl:when test="contains(@rdf:resource,'skos')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">SKOS: </a></dd></xsl:when>
            <xsl:when test="contains(@rdf:resource,'dct')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">DCTERMS: </a></dd></xsl:when>
            <xsl:when test="contains(@rdf:resource,'schema')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">SCHEMA: </a></dd></xsl:when>
            <xsl:when test="contains(@rdf:resource,'dcat')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">DCAT: </a></dd></xsl:when>
            <xsl:when test="contains(@rdf:resource,'prov')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">PROV: </a></dd></xsl:when>
            <xsl:when test="contains(@rdf:resource,'foaf')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">FOAF: </a></dd></xsl:when>
            <xsl:when test="contains(@rdf:resource,'lom')"><dd style="padding-bottom:10px"><a href="{@rdf:resource}">LOMfr: </a>ressource pédagogique</dd></xsl:when>
        </xsl:choose>
    </xsl:template>-->
    <xsl:template match="owl:Class">
        <xsl:if test="contains(@rdf:about,'istex')">
            <li>
                <a href="#{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                </a>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="owl:ObjectProperty">
        <xsl:if test="contains(@rdf:about,'istex')">
            <li>
                <a href="#{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                </a>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="owl:DatatypeProperty">
        <xsl:if test="contains(@rdf:about,'istex')">
            <li>
                <a href="#{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                </a>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="owl:Class" mode="classe2">
        <xsl:if test="contains(@rdf:about,'istex')">
            <li>
                <h3 id="{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                    <a href="#{substring-after(@rdf:about,'#')}">
                        <small>
                            <xsl:value-of select="@rdf:about"/>
                        </small>
                    </a>
                </h3>
                <ul class="features">
                    <xsl:if test="rdfs:label">
                        <xsl:for-each select="rdfs:label">
                        <li>
                            <div class="prop">
                                <small>rdfs:label</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="."/>
                                </span>
                                <xsl:if test="@xml:lang">
                                    <small>@<xsl:value-of select="@xml:lang"/></small>
                                </xsl:if>
                            </div>
                        </li>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="rdfs:comment">
                        <xsl:for-each select="rdfs:comment">
                            <li>
                                <div class="prop">
                                    <small>rdfs:comment</small>
                                </div>
                                <div class="obj">
                                    <span>
                                        <xsl:value-of select="."/>
                                        <xsl:if test="@xml:lang">
                                            <small>@<xsl:value-of select="@xml:lang"/></small>
                                        </xsl:if>
                                    </span>
                                </div>
                            </li>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="rdfs:subClassOf">
                        <xsl:for-each select="rdfs:subClassOf">
                            <li>
                                <div class="prop"><small>rdfs:subClassOf</small></div>
                                <div class="obj">
                                    <span>
                                        <xsl:call-template name="subClassOf"/> 
                                    </span></div>
                            </li>
                        </xsl:for-each>
                    </xsl:if>
                </ul>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="owl:ObjectProperty" mode="OP2">
        <xsl:if test="contains(@rdf:about,'istex')">
            <li>
                <h3 id="{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                    <a href="#{substring-after(@rdf:about,'#')}">
                        <small>
                            <xsl:value-of select="@rdf:about"/>
                        </small>
                    </a>
                </h3>
                <ul class="features">
                    <xsl:if test="rdfs:label">
                        <xsl:for-each select="rdfs:label">
                        <li>
                            <div class="prop">
                                <small>rdfs:label</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="."/>
                                </span>
                                <xsl:if test="@xml:lang">
                                    <small>@<xsl:value-of select="@xml:lang"/></small>
                                </xsl:if>
                            </div>
                        </li>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="rdfs:comment">
                        <xsl:for-each select="rdfs:comment">
                            <li>
                                <div class="prop">
                                    <small>rdfs:comment</small>
                                </div>
                                <div class="obj">
                                    <span>
                                        <xsl:value-of select="."/>
                                        <xsl:if test="@xml:lang">
                                            <small>@<xsl:value-of select="@xml:lang"/></small>
                                        </xsl:if>
                                    </span>
                                </div>
                            </li>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="rdfs:domain">
                        <li>
                            <div class="prop">
                                <small>rdfs:domain</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:call-template name="domain"/> 
                                </span>
                            </div>
                        </li>
                    </xsl:if>
                    <xsl:if test="rdfs:range">
                        <li>
                            <div class="prop"><small>rdfs:range</small></div>
                            <div class="obj">
                                <span>
                                    <xsl:call-template name="range"/> 
                                </span></div>
                        </li>
                    </xsl:if>
                    <xsl:if test="rdfs:subClassOf">
                        <li>
                            <div class="prop"><small>rdfs:subClassOf</small></div>
                            <div class="obj">
                                <span>
                                    <xsl:call-template name="subClassOf"/> 
                                </span></div>
                        </li>
                    </xsl:if>
                </ul>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="owl:DatatypeProperty" mode="DataP2">
        <xsl:if test="contains(@rdf:about,'istex')">
            <li>
                <h3 id="{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                    <a href="#{substring-after(@rdf:about,'#')}">
                        <small>
                            <xsl:value-of select="@rdf:about"/>
                        </small>
                    </a>
                </h3>
                <ul class="features">
                    <xsl:if test="rdfs:label">
                        <xsl:for-each select="rdfs:label">
                        <li>
                            <div class="prop">
                                <small>rdfs:label</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="."/>
                                </span>
                                <xsl:if test="@xml:lang">
                                    <small>@<xsl:value-of select="@xml:lang"/></small>
                                </xsl:if>
                            </div>
                        </li>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="rdfs:comment">
                        <xsl:for-each select="rdfs:comment">
                            <li>
                                <div class="prop">
                                    <small>rdfs:comment</small>
                                </div>
                                <div class="obj">
                                    <span>
                                        <xsl:value-of select="."/>
                                        <xsl:if test="@xml:lang">
                                            <small>@<xsl:value-of select="@xml:lang"/></small>
                                        </xsl:if>
                                    </span>
                                </div>
                            </li>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="rdfs:domain">
                        <li>
                            <div class="prop">
                                <small>rdfs:domain</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:call-template name="domain"/>  
                                </span>
                            </div>
                        </li>
                    </xsl:if>
                    <xsl:if test="rdfs:range">
                        <li>
                            <div class="prop"><small>rdfs:range</small></div>
                            <div class="obj">
                                <span>
                                    <xsl:call-template name="range"/> 
                                </span></div>
                        </li>
                    </xsl:if>
                    <xsl:if test="rdfs:subClassOf">
                        <li>
                            <div class="prop"><small>rdfs:subClassOf</small></div>
                            <div class="obj">
                                <span>
                                    <xsl:call-template name="subClassOf"/> 
                                </span></div>
                        </li>
                    </xsl:if>
                </ul>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template name="onto">
            <xsl:choose>
                <xsl:when test="@rdf:resource='http://purl.org/ontology/bibo/Document'">bibo:Document</xsl:when>
                <xsl:when test="@rdf:resource='http://www.w3.org/ns/dcat#Catalog'">dcat:Catalog</xsl:when>
                <xsl:when test="@rdf:resource='http://purl.org/dc/terms/PeriodOfTime'">dcterms:PeriodOfTime</xsl:when>
                <xsl:when test="contains(@rdf:resource,'https://data.istex.fr')">istex:<xsl:value-of select="substring-after(@rdf:resource,'#')"/></xsl:when>
                <xsl:when test="@rdf:resource='http://www.w3.org/ns/dcat#Dataset'">dcat:Dataset</xsl:when>
                <xsl:when test="@rdf:resource='http://www.w3.org/2000/01/rdf-schema#Literal'">rdfs:Literal</xsl:when>
                <xsl:when test="@rdf:resource='http://www.w3.org/2004/02/skos/core#Concept'">skos:Concept</xsl:when>
                <xsl:when test="@rdf:resource='http://www.w3.org/2001/XMLSchema#dateTime'">xsd:dateTime</xsl:when>
                <xsl:when test="@rdf:resource='http://www.w3.org/2001/XMLSchema#anyURI'">xsd:anyURI</xsl:when>
                <xsl:when test="@rdf:resource='http://www.w3.org/ns/prov#Activity'">prov:Activity</xsl:when>
                <xsl:when test="@rdf:resource='http://xmlns.com/foaf/0.1/Agent'">foaf:agent</xsl:when>
                <xsl:when test="@rdf:resource='http://rdfs.org/ns/void#Dataset'">void:Dataset</xsl:when>
                <xsl:when test="@rdf:resource='http://purl.org/vocab/frbr/core#Work'">frbr:Work</xsl:when>
            </xsl:choose>
    </xsl:template>
    <xsl:template name="domain">
        <a href="{rdfs:domain/@rdf:resource}">
            <xsl:for-each select="rdfs:domain">
                <xsl:call-template name="onto"/>
            </xsl:for-each>
        </a>
    </xsl:template>
    <xsl:template name="range">
        <a href="{rdfs:range/@rdf:resource}">
            <xsl:for-each select="rdfs:range">
                <xsl:call-template name="onto"/>
            </xsl:for-each>
        </a>
    </xsl:template>
    <xsl:template name="subClassOf">
        <a href="{@rdf:resource}">
            <xsl:for-each select=".">
                <xsl:call-template name="onto"/>
            </xsl:for-each>
        </a>
    </xsl:template>
</xsl:stylesheet>
