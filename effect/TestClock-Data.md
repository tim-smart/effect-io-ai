Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.Data

`Data` represents the state of the `TestClock`, including the clock time.

**Signature**

```ts
export interface Data {
  readonly instant: number
  readonly sleeps: Chunk.Chunk<readonly [number, Deferred.Deferred<void>]>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestClock.ts#L89)

Since v2.0.1