Package: `@effect/ai-amazon-bedrock`<br />
Module: `AmazonBedrockSchema`<br />

## AmazonBedrockSchema.BedrockFoundationModelId

The foundation models supported by Amazon Bedrock.

An up-to-date list can be generated with the following command:

```sh
aws bedrock list-foundation-models --output json | jq '[.modelSummaries[].modelId]'
```

**Signature**

```ts
declare class BedrockFoundationModelId
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/amazon-bedrock/src/AmazonBedrockSchema.ts#L22)

Since v1.0.0