Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.Exclude

Annotation that excludes an annotated group or endpoint from the generated
OpenAPI specification.

**When to use**

Use to hide internal, experimental, or otherwise undocumented HTTP API groups
and endpoints from generated OpenAPI output.

**Signature**

```ts
declare const Exclude: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OpenApi.ts#L136)

Since v4.0.0