Package: `effect`<br />
Module: `Tool`<br />

## Tool.HandlerOutput

Tagged union for incremental handler output.

When a tool handler returns a `Stream`, each emitted value is tagged as
either:
- `Preliminary`: An intermediate result representing progress
- `Final`: The last result, which is the authoritative output

**Signature**

```ts
type HandlerOutput<Success> = | { readonly _tag: "Preliminary"; readonly value: Success }
  | { readonly _tag: "Final"; readonly value: Success }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L940)

Since v1.0.0