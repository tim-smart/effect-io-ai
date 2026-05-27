Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.AsyncResult.Proto

Common prototype fields implemented by every `AsyncResult` variant, including pipeability, the type marker, phantom type members, and the `waiting` flag.

**Signature**

```ts
export interface Proto<A, E> extends Pipeable {
    readonly [TypeId]: {
      readonly E: (_: never) => E
      readonly A: (_: never) => A
    }
    readonly waiting: boolean
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L107)

Since v4.0.0