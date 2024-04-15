echo  "Requires go" 
sleep 0.2
echo "This must be run with sudo"
sleep 0.5 

# This will install httpx, dnsx, subfinder, chaos, wafw00f, amass, nuclei, hackip2host, ddgs, github-subdomains

if ! which httpx > /dev/null; then
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
fi
if ! which httpx > /dev/null; then
    go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
fi
if ! which subfinder > /dev/null; then
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
fi
if ! which amass > /dev/null; then
    go install -v github.com/owasp-amass/amass/v4/...@master
fi
if ! which chaos > /dev/null; then
    go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
fi
if ! which wafw00f > /dev/null; then
    git clone https://github.com/EnableSecurity/wafw00f.git
    cd wafw00f/
    python3 setup.py install
fi
if ! which nuclei > /dev/null; then
    go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
fi
if ! which hakip2host > /dev/null; then
    go install github.com/hakluke/hakip2host@latest
fi
if ! which ddgs > /dev/null; then
    pip install duckduckgo_seach
fi
if ! which github-subdomains > /dev/null; then
    go install github.com/gwen001/github-subdomains@latest
    go github-subdomains/install
fi
