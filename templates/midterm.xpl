<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:c="http://www.w3.org/ns/xproc-step" version="3.0">
    <p:input port="source" primary="true" 
        content-types="xml html"/>
    <p:input port="insertion" sequence="true" 
        content-types="xml html"/>
    <p:output port="result" content-types="xml html"/>
</p:declare-step>