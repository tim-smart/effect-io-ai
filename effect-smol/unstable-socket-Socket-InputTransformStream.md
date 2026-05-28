Package: `effect`<br />
Module: `Socket`<br />

## Socket.InputTransformStream

Readable and writable stream pair used to adapt transform-style streams into
a `Socket`.

**Signature**

```ts
export interface InputTransformStream {
  readonly readable: ReadableStream<Uint8Array> | ReadableStream<string> | ReadableStream<Uint8Array | string>
  readonly writable: WritableStream<Uint8Array>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L815)

Since v4.0.0