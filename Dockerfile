# Import yq into jq container because yq is a statically-linked single binary
FROM mikefarah/yq as yq

FROM stedolan/jq

COPY --from=yq /usr/bin/yq /usr/local/bin/yq
RUN chmod +x /usr/local/bin/yq
