## orDieWith

Keeps none of the errors, and terminates the fiber with them, using the
specified function to convert the `OutErr` into a defect.

**Signature**

```ts
declare const orDieWith: { <OutErr>(f: (e: OutErr) => unknown): <OutElem, InElem, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (e: OutErr) => unknown): Channel<OutElem, InElem, never, InErr, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1644)

Since v2.0.0