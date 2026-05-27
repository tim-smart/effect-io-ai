Package: `effect`<br />
Module: `Channel`<br />

## Channel.bindTo

Wraps each output element in an object under the specified field name.

**When to use**

Use when starting a Channel Do-notation chain from an existing output value
by assigning that value to a field name.

**See**

- `Do` for starting Do notation from an empty object
- `bind` for adding a field produced by another channel
- `let` for adding a computed field

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<{ [K in N]: OutElem; }, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, N extends string>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, name: N): Channel<{ [K in N]: OutElem; }, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7603)

Since v4.0.0