Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.Envelope

Union of cluster envelopes exchanged for an RPC request.

**Details**

An envelope is either a request, an acknowledgement for a streamed reply chunk,
or an interrupt signal.

**Signature**

```ts
type Envelope<R> = Request<R> | AckChunk | Interrupt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L41)

Since v4.0.0