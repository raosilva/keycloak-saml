<keycloak-saml-adapter>
    <SP entityID="urn:empresa:saf:sp:apliauth"
        sslPolicy="EXTERNAL"
        nameIDPolicyFormat="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">
        
        <Keys>
            <Key signing="true">
                <PrivateKeyPem>
                -----BEGIN PRIVATE KEY-----
                SUA-CHAVE-PRIVADA-AQUI
                -----END PRIVATE KEY-----
                </PrivateKeyPem>
                <CertificatePem>
                -----BEGIN CERTIFICATE-----
                SEU-CERTIFICADO-PÚBLICO-AQUI
                -----END CERTIFICATE-----
                </CertificatePem>
            </Key>
        </Keys>

        <IDP entityID="urn:empresa:saf:idp:apliauth">
            <SingleSignOnService signRequest="true"
                                 requestBinding="POST"
                                 bindingUrl="https://post" />
            <SingleSignOnService signRequest="true"
                                 requestBinding="REDIRECT"
                                 bindingUrl="https://Redirect" />
            <SingleSignOnService signRequest="true"
                                 requestBinding="SOAP"
                                 bindingUrl="location" />
            <Keys>
                <Key>
                    <CertificatePem>
                    -----BEGIN CERTIFICATE-----
                    sfs&fsdfsdfsfsf5664fssd4fs5
                    -----END CERTIFICATE-----
                    </CertificatePem>
                </Key>
                <Key>
                    <CertificatePem>
                    -----BEGIN CERTIFICATE-----
                    sfsdfsdfsdfsfsf5664fssdafas
                    -----END CERTIFICATE-----
                    </CertificatePem>
                </Key>
            </Keys>
        </IDP>
    </SP>
</keycloak-saml-adapter>
