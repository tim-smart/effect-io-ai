Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.ImageGeneration

Defines the OpenAI Image Generation tool that enables the model to generate images using
the GPT image models.

**When to use**

Use to enable OpenAI provider-defined image generation through a language
model response.

**Details**

The tool configures the `image_generation` provider tool, including model,
size, quality, output format, moderation, background, input-image options,
and partial image settings. Successful tool calls expose `result` as base64
image data or `null`.

**Signature**

```ts
declare const ImageGeneration: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly background?: "auto" | "transparent" | "opaque" | undefined; readonly input_fidelity?: "low" | "high" | null | undefined; readonly input_image_mask?: { readonly image_url?: string | undefined; readonly file_id?: string | undefined; } | undefined; readonly model?: string | undefined; readonly moderation?: "auto" | "low" | undefined; readonly output_compression?: number | undefined; readonly output_format?: "png" | "webp" | "jpeg" | undefined; readonly partial_images?: number | undefined; readonly quality?: "auto" | "low" | "medium" | "high" | undefined; readonly size?: string | undefined; }) => Tool.ProviderDefined<"openai.image_generation", "OpenAiImageGeneration", { readonly args: Schema.Struct<{ readonly background: Schema.optionalKey<Schema.Literals<readonly ["transparent", "opaque", "auto"]>>; readonly input_fidelity: Schema.optionalKey<Schema.Union<readonly [Schema.Literals<readonly ["high", "low"]>, Schema.Null]>>; readonly input_image_mask: Schema.optionalKey<Schema.Struct<{ readonly image_url: Schema.optionalKey<Schema.String>; readonly file_id: Schema.optionalKey<Schema.String>; }>>; readonly model: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Literals<readonly ["gpt-image-1", "gpt-image-1-mini", "gpt-image-1.5"]>]>>; readonly moderation: Schema.optionalKey<Schema.Literals<readonly ["auto", "low"]>>; readonly output_compression: Schema.optionalKey<Schema.Number>; readonly output_format: Schema.optionalKey<Schema.Literals<readonly ["png", "webp", "jpeg"]>>; readonly partial_images: Schema.optionalKey<Schema.Number>; readonly quality: Schema.optionalKey<Schema.Literals<readonly ["low", "medium", "high", "auto"]>>; readonly size: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Literals<readonly ["1024x1024", "1024x1536", "1536x1024", "auto"]>]>>; }>; readonly parameters: Schema.Void; readonly success: Schema.Struct<{ readonly result: Schema.Union<readonly [Schema.String, Schema.Null]>; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L147)

Since v4.0.0