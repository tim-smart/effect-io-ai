Package: `effect`<br />
Module: `Sse`<br />

## Sse.Encoder

Encoder capable of rendering an `Event` or `Retry` value as Server-Sent
Events text.

**Signature**

```ts
export interface Encoder {
  write(event: AnyEvent): string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L408)

Since v4.0.0