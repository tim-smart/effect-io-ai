Package: `effect`<br />
Module: `Channel`<br />

## Channel.identity

Creates a channel that forwards upstream input elements, input errors, and
the upstream done value unchanged.

**Signature**

```ts
declare const identity: <Elem, Err, Done>() => Channel<Elem, Err, Done, Elem, Err, Done>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1268)

Since v2.0.0