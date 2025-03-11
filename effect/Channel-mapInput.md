## mapInput

Returns a new channel which is the same as this one but applies the given
function to the input channel's done value.

**Signature**

```ts
declare const mapInput: { <InDone0, InDone>(f: (a: InDone0) => InDone): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone0, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InDone0>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (a: InDone0) => InDone): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone0, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L556)

Since v2.0.0