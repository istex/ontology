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
    =======================================================================================-->
    
    <xsl:template match="/" xml:space="default">
        <xsl:apply-templates select="*"/>
    </xsl:template>
    
    <!-- debut des templates -->
    <xsl:template match="rdf:RDF">
        <html lang="fr">
            <head>
                <title>Ontologie ISTEX</title>
                <!-- <link rel="stylesheet" href="../css/bootstrap.css"> -->
                <!-- <link rel="stylesheet" href="../css/style.css"> -->
                <link rel="stylesheet" href="../css/doremus.css"/>
                <script type="text/javascript" src="//content-delivery.istex.fr/web-header/main.js"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Ontologie ISTEX</title>
            </head>
            <body>
                <nav>
                    <a href="..">data.istex.fr</a>
                </nav>
                <section class="cover">
                    <div class="inside">
                        <div class="description">
                            <h1>Ontologie ISTEX</h1>
                            <p>Ontologie du projet ISTEX pour le triple store Triplex</p>
                            <!-- attention mettre à jour le nbre de classes et de propriétés lors de chaque rechargement -->
                            <p>Cette ontologie définit <xsl:value-of select="count(owl:Class[contains(.,'istex')])"/> Classes, <xsl:value-of select="count(owl:ObjectProperty[contains(.,'istex')])"/> Object Properties et <xsl:value-of select="count(owl:DatatypeProperty[contains(.,'istex')])"/> Data Properties.</p>
                            <a class="btn" href="https://github.com/istex/ontology/blob/master/istexXML.owl"><span>Disponible sur GitHub</span></a>
                        </div>
                        <!-- ajouter logo triplex--> 
                        <div class="logo"><img alt="" src="../img/lodex.png"/></div>
                    </div>
                </section>
                <h1 style="padding-bottom:10px">Sommaire</h1>
              <!--  <section class="ontologyImports card" style="padding-bottom:10px">
                    <h1 style="background-color:powderblue;">Ontologies importées</h1>
               -->     
                    <!--<dl class="list" style="padding-bottom:10px">
                        <xsl:apply-templates select="owl:Ontology"/>
                    </dl>-->
                    
               <!--      <ul class="list">
                        <li style="padding-bottom:10px"><a href="http://www.w3.org/ns/dcat">DCAT: </a><i>conçu pour faciliter l'interopérabilité entre les catalogues de données publiés sur le Web</i></li>
                        <li style="padding-bottom:10px"><a href="http://purl.org/ontology/bibo/">BIBO: </a><i>fournit les principaux concepts et propriétés pour décrire des références bibliographiques (livres, articles, etc.)</i></li>
                        <li style="padding-bottom:10px"><a href="http://schema.org">SCHEMA: </a><i>a pour mission de créer, maintenir et promouvoir des schémas pour des données structurées sur le Web</i></li>
                        <li style="padding-bottom:10px"><a href="http://www.w3.org/ns/prov">PROV: </a><i>décrit les informations de provenance sur le web</i></li>
                        <li style="padding-bottom:10px"><a href="http://www.w3.org/2004/02/skos/core">SKOS: </a><i>est un modèle de données commun pour le partage et la liaison de systèmes d'organisation des connaissances</i></li>
                        <li style="padding-bottom:10px"><a href="http://xmlns.com/foaf/0.1/">FOAF: </a><i>décrit des personnes et les relations qu'elles entretiennent entre elles</i></li>
                        <li style="padding-bottom:10px"><a href="http://data.opendiscoveryspace.eu/lom_ontology_ods.owl">IEEE LOM: </a><i>décrit des ressources pédagogiques</i></li>
                        <li style="padding-bottom:10px"><a href="http://www.geonames.org/ontology/documentation.html"> GeoNames: </a><i>ajoute des informations sémantiques géospatiales au W3C</i></li>
                    </ul>
                </section>--> 
                <section class="summary">
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
                <!-- ontologies importées -->
                <!-- SG - pour le moment imports des ontologies en dure -->
                <h1>Ontologies importées</h1>
                <section class="ontologyImports card">
                    <ul class="list">
                        <li>
                            <h2 id="bibo"><a href="http://purl.org/ontology/bibo/">BIBO</a>
                                <small><i><a href="http://purl.org/ontology/bibo/">http://purl.org/ontology/bibo/</a></i></small></h2>
                            <div><span>fournit les principaux concepts et propriétés pour décrire des références bibliographiques
                                (livres, articles, etc.)</span>
                            </div>
                        </li>
                        <li>
                            <h2 id="skos"><a href="http://www.w3.org/2004/02/skos/core">SKOS</a>
                                <small><i><a href="http://www.w3.org/2004/02/skos/core">http://www.w3.org/2004/02/skos/core</a></i></small>
                            </h2>
                            <div><span>est un modèle de données commun pour le partage et la liaison de systèmes d'organisation</span></div>
                        </li>
                        <li>
                            <h2 id="dcat"><a href="http://www.w3.org/ns/dcat">DCAT</a>
                                <small><i><a href="http://www.w3.org/ns/dcat">http://www.w3.org/ns/dcat</a></i></small>
                            </h2>
                            <div><span>conçu pour faciliter l'interopérabilité entre les catalogues de données publiés sur
                                le Web</span></div>
                        </li>
                        <li>
                            <h2 id="dcterms"><a href="http://purl.org/dc/terms/">DCTERMS</a>
                                <small><i><a href="http://purl.org/dc/terms/">http://purl.org/dc/terms/</a></i></small>
                            </h2>
                            <div><span>ensemble de termes de vocabulaire utilisés pour décrire des ressources à des fins de découverte</span></div>
                        </li>
                        <li>
                            <h2 id="prov"><a href="http://www.w3.org/ns/prov">PROV</a>
                                <small><i><a href="http://www.w3.org/ns/prov">http://www.w3.org/ns/prov</a></i></small>
                            </h2>
                            <div><span>décrit les informations de provenance sur le web</span></div>
                        </li>
                        <li>
                            <h2 id="schema"><a href="http://schema.org">SCHEMA</a>
                                <small><i><a href="http://schema.org">http://schema.org</a></i></small>
                            </h2>
                            <div><span>a pour mission de créer, maintenir et promouvoir des schémas pour des données structurées
                                sur le Web</span></div>
                        </li>
                        <li>
                            <h2 id="foaf"><a href="http://xmlns.com/foaf/0.1/">FOAF</a>
                                <small><i><a href="http://xmlns.com/foaf/0.1/">http://xmlns.com/foaf/0.1/</a></i></small>
                            </h2>
                            <div><span>décrit des personnes et les relations qu'elles entretiennent entre elles</span></div>
                        </li>
                        <li>
                            <h2 id="lom"><a href="http://www.lom-fr.fr/ontologies/lomfr-1/">IEEE LOM</a>
                                <small><i><a href="http://www.lom-fr.fr/ontologies/lomfr-1/">http://data.opendiscoveryspace.eu/lom_ontology_ods.owl</a></i></small>
                            </h2>
                            <div><span>décrit des ressources pédagogiques</span></div>
                        </li>
                        <li>
                            <h2 id="geonames"><a href="http://www.geonames.org/ontology/documentation.html">GEONAMES</a>
                                <small><i><a href="http://www.geonames.org/ontology/documentation.html">http://www.geonames.org/ontology/documentation.html</a></i></small>
                            </h2>
                            <div><span>ajoute des informations sémantiques géospatiales au W3C</span></div>
                        </li>
                    </ul>
                </section>
                <h1>Classes</h1>
                <!-- mettre schema Classes + définition-->
                <section class="classes card">
                    <ul class="list">
                        <xsl:apply-templates select="owl:Class" mode="classe2"/> 
                    </ul>
                </section>
                
                <!-- a completer -->
                <h1>Object Properties</h1>
                <!-- mettre schema Object Prpoperties + définition-->
                <section class="properties card">
                    <ul class="list">
                        <xsl:apply-templates select="owl:ObjectProperty" mode="OP2"/> 
                    </ul>
                </section>
                <h1>Data Properties</h1>
                <!-- mettre schema Data Prpoperties + définition-->
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
        <xsl:if test="contains(.,'istex')">
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
        <xsl:if test="contains(.,'istex')">
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
        <xsl:if test="contains(.,'istex')">
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
        <xsl:if test="contains(.,'istex')">
            <li>
                <h2 id="{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                    <a href="#{substring-after(@rdf:about,'#')}">
                        <small>
                            <xsl:value-of select="@rdf:about"/>
                        </small>
                    </a>
                </h2>
                <ul class="features">
                    <xsl:if test="rdfs:comment">
                    <li>
                        <div class="prop">
                            <small>rdfs:comment</small>
                        </div>
                        <div class="obj">
                            <span>
                                <xsl:value-of select="rdfs:comment"/>
                                <xsl:if test="rdfs:comment/@xml:lang">
                                    <small>@<xsl:value-of select="rdfs:comment/@xml:lang"/></small>
                                </xsl:if>
                            </span>
                        </div>
                    </li>
                    </xsl:if>
                    <xsl:if test="rdfs:label">
                        <li>
                            <div class="prop">
                                <small>rdfs:label</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="rdfs:label"/>
                                </span>
                                <xsl:if test="rdfs:label/@xml:lang">
                                    <small>@<xsl:value-of select="rdfs:label/@xml:lang"/></small>
                                </xsl:if>
                            </div>
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
    <xsl:template match="owl:ObjectProperty" mode="OP2">
        <xsl:if test="contains(.,'istex')">
            <li>
                <h2 id="{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                    <a href="#{substring-after(@rdf:about,'#')}">
                        <small>
                            <xsl:value-of select="@rdf:about"/>
                        </small>
                    </a>
                </h2>
                <ul class="features">
                    <xsl:if test="rdfs:comment">
                        <li>
                            <div class="prop">
                                <small>rdfs:comment</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="rdfs:comment"/>
                                    <xsl:if test="rdfs:comment/@xml:lang">
                                        <small>@<xsl:value-of select="rdfs:comment/@xml:lang"/></small>
                                    </xsl:if>
                                </span>
                            </div>
                        </li>
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
                    <xsl:if test="rdfs:label">
                        <li>
                            <div class="prop">
                                <small>rdfs:label</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="rdfs:label"/>
                                </span>
                                <xsl:if test="rdfs:label/@xml:lang">
                                    <small>@<xsl:value-of select="rdfs:label/@xml:lang"/></small>
                                </xsl:if>
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
        <xsl:if test="contains(.,'istex')">
            <li>
                <h2 id="{substring-after(@rdf:about,'#')}">
                    <span>
                        <xsl:value-of select="substring-after(@rdf:about,'#')"/>
                    </span>
                    <a href="#{substring-after(@rdf:about,'#')}">
                        <small>
                            <xsl:value-of select="@rdf:about"/>
                        </small>
                    </a>
                </h2>
                <ul class="features">
                    <xsl:if test="rdfs:comment">
                        <li>
                            <div class="prop">
                                <small>rdfs:comment</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="rdfs:comment"/>
                                    <xsl:if test="rdfs:comment/@xml:lang">
                                        <small>@<xsl:value-of select="rdfs:comment/@xml:lang"/></small>
                                    </xsl:if>
                                </span>
                            </div>
                        </li>
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
                    <xsl:if test="rdfs:label">
                        <li>
                            <div class="prop">
                                <small>rdfs:label</small>
                            </div>
                            <div class="obj">
                                <span>
                                    <xsl:value-of select="rdfs:label"/>
                                </span>
                                <xsl:if test="rdfs:label/@xml:lang">
                                    <small>@<xsl:value-of select="rdfs:label/@xml:lang"/></small>
                                </xsl:if>
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
        <a href="{rdfs:subClassOf/@rdf:resource}">
            <xsl:for-each select="rdfs:subClassOf">
                <xsl:call-template name="onto"/>
            </xsl:for-each>
        </a>
    </xsl:template>
</xsl:stylesheet>
    
