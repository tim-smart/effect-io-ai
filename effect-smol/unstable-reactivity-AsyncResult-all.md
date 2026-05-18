Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.all

Combines an iterable or record of `AsyncResult` and plain values into one `AsyncResult`, returning the first non-success result or a success of the collected values marked waiting when any input success is waiting.

**Signature**

```ts
declare const all: <const Arg extends Iterable<any> | Record<string, any>>(results: Arg) => AsyncResult<[Arg] extends [ReadonlyArray<any>] ? { -readonly [K in keyof Arg]: [Arg[K]] extends [AsyncResult<infer _A, infer _E>] ? _A : Arg[K]; } : [Arg] extends [Iterable<infer _A>] ? _A extends AsyncResult<infer _AA, infer _E> ? _AA : _A : [Arg] extends [Record<string, any>] ? { -readonly [K in keyof Arg]: [Arg[K]] extends [AsyncResult<infer _A, infer _E>] ? _A : Arg[K]; } : never, [Arg] extends [ReadonlyArray<any>] ? AsyncResult.Failure<Arg[number]> : [Arg] extends [Iterable<infer _A>] ? AsyncResult.Failure<_A> : [Arg] extends [Record<string, any>] ? AsyncResult.Failure<Arg[keyof Arg]> : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L670)

Since v4.0.0