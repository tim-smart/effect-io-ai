Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.waitingFrom

Creates a waiting result from an optional previous result, using `Initial(true)` when no previous result exists.

**Signature**

```ts
declare const waitingFrom: <A, E>(previous: Option.Option<AsyncResult<A, E>>) => AsyncResult<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L197)

Since v4.0.0