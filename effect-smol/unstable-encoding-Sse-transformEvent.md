Package: `effect`<br />
Module: `Sse`<br />

## Sse.transformEvent

Schema transformation between the untagged SSE event shape and the tagged
`Event` model.

**Signature**

```ts
declare const transformEvent: Transformation.Transformation<{ readonly id?: string | undefined; readonly event: string; readonly data: string; }, { readonly _tag: "Event"; readonly id: string | undefined; readonly event: string; readonly data: string; }, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L497)

Since v4.0.0