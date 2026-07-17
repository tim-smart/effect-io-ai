Package: `effect`<br />
Module: `Sse`<br />

## Sse.encoder

Default Server-Sent Events encoder.

**Details**

It renders `Event` values as `id`, `event`, and `data` lines and renders
`Retry` values as `retry:` directives.

**Signature**

```ts
declare const encoder: Encoder
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sse.ts#L572)

Since v4.0.0