Package: `effect`<br />
Module: `Channel`<br />

## Channel.writeAll

Writes a sequence of values to the channel.

**Signature**

```ts
declare const writeAll: <OutElems extends Array<any>>(...outs: OutElems) => Channel<OutElems[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2207)

Since v2.0.0