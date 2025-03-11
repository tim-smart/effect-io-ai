## mapInputIn

Returns a new channel which is the same as this one but applies the given
function to the input channel's output elements.

**Signature**

```ts
declare const mapInputIn: { <InElem0, InElem>(f: (a: InElem0) => InElem): <OutElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem0, OutErr, InErr, OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InElem0>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (a: InElem0) => InElem): Channel<OutElem, InElem0, OutErr, InErr, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L632)

Since v2.0.0