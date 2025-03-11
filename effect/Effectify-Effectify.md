## Effectify

Converts a callback-based function to a function that returns an `Effect`.

**Signature**

```ts
type Effectify<T, E> = T extends {
  (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
  (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
  (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
  (...args: ArgsWithCallback<infer Args4, infer _E4, infer A4>): infer _R4
  (...args: ArgsWithCallback<infer Args5, infer _E5, infer A5>): infer _R5
  (...args: ArgsWithCallback<infer Args6, infer _E6, infer A6>): infer _R6
  (...args: ArgsWithCallback<infer Args7, infer _E7, infer A7>): infer _R7
  (...args: ArgsWithCallback<infer Args8, infer _E8, infer A8>): infer _R8
  (...args: ArgsWithCallback<infer Args9, infer _E9, infer A9>): infer _R9
  (...args: ArgsWithCallback<infer Args10, infer _E10, infer A10>): infer _R10
} ? {
    (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
    (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
    (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
    (...args: Args4): Effect.Effect<WithoutNull<A4>, E>
    (...args: Args5): Effect.Effect<WithoutNull<A5>, E>
    (...args: Args6): Effect.Effect<WithoutNull<A6>, E>
    (...args: Args7): Effect.Effect<WithoutNull<A7>, E>
    (...args: Args8): Effect.Effect<WithoutNull<A8>, E>
    (...args: Args9): Effect.Effect<WithoutNull<A9>, E>
    (...args: Args10): Effect.Effect<WithoutNull<A10>, E>
  }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
    (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
    (...args: ArgsWithCallback<infer Args4, infer _E4, infer A4>): infer _R4
    (...args: ArgsWithCallback<infer Args5, infer _E5, infer A5>): infer _R5
    (...args: ArgsWithCallback<infer Args6, infer _E6, infer A6>): infer _R6
    (...args: ArgsWithCallback<infer Args7, infer _E7, infer A7>): infer _R7
    (...args: ArgsWithCallback<infer Args8, infer _E8, infer A8>): infer _R8
    (...args: ArgsWithCallback<infer Args9, infer _E9, infer A9>): infer _R9
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
      (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
      (...args: Args4): Effect.Effect<WithoutNull<A4>, E>
      (...args: Args5): Effect.Effect<WithoutNull<A5>, E>
      (...args: Args6): Effect.Effect<WithoutNull<A6>, E>
      (...args: Args7): Effect.Effect<WithoutNull<A7>, E>
      (...args: Args8): Effect.Effect<WithoutNull<A8>, E>
      (...args: Args9): Effect.Effect<WithoutNull<A9>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
    (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
    (...args: ArgsWithCallback<infer Args4, infer _E4, infer A4>): infer _R4
    (...args: ArgsWithCallback<infer Args5, infer _E5, infer A5>): infer _R5
    (...args: ArgsWithCallback<infer Args6, infer _E6, infer A6>): infer _R6
    (...args: ArgsWithCallback<infer Args7, infer _E7, infer A7>): infer _R7
    (...args: ArgsWithCallback<infer Args8, infer _E8, infer A8>): infer _R8
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
      (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
      (...args: Args4): Effect.Effect<WithoutNull<A4>, E>
      (...args: Args5): Effect.Effect<WithoutNull<A5>, E>
      (...args: Args6): Effect.Effect<WithoutNull<A6>, E>
      (...args: Args7): Effect.Effect<WithoutNull<A7>, E>
      (...args: Args8): Effect.Effect<WithoutNull<A8>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
    (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
    (...args: ArgsWithCallback<infer Args4, infer _E4, infer A4>): infer _R4
    (...args: ArgsWithCallback<infer Args5, infer _E5, infer A5>): infer _R5
    (...args: ArgsWithCallback<infer Args6, infer _E6, infer A6>): infer _R6
    (...args: ArgsWithCallback<infer Args7, infer _E7, infer A7>): infer _R7
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
      (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
      (...args: Args4): Effect.Effect<WithoutNull<A4>, E>
      (...args: Args5): Effect.Effect<WithoutNull<A5>, E>
      (...args: Args6): Effect.Effect<WithoutNull<A6>, E>
      (...args: Args7): Effect.Effect<WithoutNull<A7>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
    (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
    (...args: ArgsWithCallback<infer Args4, infer _E4, infer A4>): infer _R4
    (...args: ArgsWithCallback<infer Args5, infer _E5, infer A5>): infer _R5
    (...args: ArgsWithCallback<infer Args6, infer _E6, infer A6>): infer _R6
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
      (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
      (...args: Args4): Effect.Effect<WithoutNull<A4>, E>
      (...args: Args5): Effect.Effect<WithoutNull<A5>, E>
      (...args: Args6): Effect.Effect<WithoutNull<A6>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
    (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
    (...args: ArgsWithCallback<infer Args4, infer _E4, infer A4>): infer _R4
    (...args: ArgsWithCallback<infer Args5, infer _E5, infer A5>): infer _R5
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
      (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
      (...args: Args4): Effect.Effect<WithoutNull<A4>, E>
      (...args: Args5): Effect.Effect<WithoutNull<A5>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
    (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
    (...args: ArgsWithCallback<infer Args4, infer _E4, infer A4>): infer _R4
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
      (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
      (...args: Args4): Effect.Effect<WithoutNull<A4>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
    (...args: ArgsWithCallback<infer Args3, infer _E3, infer A3>): infer _R3
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
      (...args: Args3): Effect.Effect<WithoutNull<A3>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
    (...args: ArgsWithCallback<infer Args2, infer _E2, infer A2>): infer _R2
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
      (...args: Args2): Effect.Effect<WithoutNull<A2>, E>
    }
  : T extends {
    (...args: ArgsWithCallback<infer Args1, infer _E1, infer A1>): infer _R1
  } ? {
      (...args: Args1): Effect.Effect<WithoutNull<A1>, E>
    }
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Effectify.ts#L20)

Since v1.0.0