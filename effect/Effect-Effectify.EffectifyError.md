Package: `effect`<br />
Module: `Effect`<br />

## Effect.Effectify.EffectifyError

Extracts the callback error type from a callback-based function type.

**Signature**

```ts
type EffectifyError<T> = T extends {
    (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
    (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
    (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
    (...args: ArgsWithCallback<infer _Args4, infer E4, infer _A4>): infer _R4
    (...args: ArgsWithCallback<infer _Args5, infer E5, infer _A5>): infer _R5
    (...args: ArgsWithCallback<infer _Args6, infer E6, infer _A6>): infer _R6
    (...args: ArgsWithCallback<infer _Args7, infer E7, infer _A7>): infer _R7
    (...args: ArgsWithCallback<infer _Args8, infer E8, infer _A8>): infer _R8
    (...args: ArgsWithCallback<infer _Args9, infer E9, infer _A9>): infer _R9
    (...args: ArgsWithCallback<infer _Args10, infer E10, infer _A10>): infer _R10
  } ? NonNullable<E1 | E2 | E3 | E4 | E5 | E6 | E7 | E8 | E9 | E10>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
      (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
      (...args: ArgsWithCallback<infer _Args4, infer E4, infer _A4>): infer _R4
      (...args: ArgsWithCallback<infer _Args5, infer E5, infer _A5>): infer _R5
      (...args: ArgsWithCallback<infer _Args6, infer E6, infer _A6>): infer _R6
      (...args: ArgsWithCallback<infer _Args7, infer E7, infer _A7>): infer _R7
      (...args: ArgsWithCallback<infer _Args8, infer E8, infer _A8>): infer _R8
      (...args: ArgsWithCallback<infer _Args9, infer E9, infer _A9>): infer _R9
    } ? NonNullable<E1 | E2 | E3 | E4 | E5 | E6 | E7 | E8 | E9>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
      (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
      (...args: ArgsWithCallback<infer _Args4, infer E4, infer _A4>): infer _R4
      (...args: ArgsWithCallback<infer _Args5, infer E5, infer _A5>): infer _R5
      (...args: ArgsWithCallback<infer _Args6, infer E6, infer _A6>): infer _R6
      (...args: ArgsWithCallback<infer _Args7, infer E7, infer _A7>): infer _R7
      (...args: ArgsWithCallback<infer _Args8, infer E8, infer _A8>): infer _R8
    } ? NonNullable<E1 | E2 | E3 | E4 | E5 | E6 | E7 | E8>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
      (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
      (...args: ArgsWithCallback<infer _Args4, infer E4, infer _A4>): infer _R4
      (...args: ArgsWithCallback<infer _Args5, infer E5, infer _A5>): infer _R5
      (...args: ArgsWithCallback<infer _Args6, infer E6, infer _A6>): infer _R6
      (...args: ArgsWithCallback<infer _Args7, infer E7, infer _A7>): infer _R7
    } ? NonNullable<E1 | E2 | E3 | E4 | E5 | E6 | E7>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
      (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
      (...args: ArgsWithCallback<infer _Args4, infer E4, infer _A4>): infer _R4
      (...args: ArgsWithCallback<infer _Args5, infer E5, infer _A5>): infer _R5
      (...args: ArgsWithCallback<infer _Args6, infer E6, infer _A6>): infer _R6
    } ? NonNullable<E1 | E2 | E3 | E4 | E5 | E6>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
      (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
      (...args: ArgsWithCallback<infer _Args4, infer E4, infer _A4>): infer _R4
      (...args: ArgsWithCallback<infer _Args5, infer E5, infer _A5>): infer _R5
    } ? NonNullable<E1 | E2 | E3 | E4 | E5>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
      (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
      (...args: ArgsWithCallback<infer _Args4, infer E4, infer _A4>): infer _R4
    } ? NonNullable<E1 | E2 | E3 | E4>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
      (...args: ArgsWithCallback<infer _Args3, infer E3, infer _A3>): infer _R3
    } ? NonNullable<E1 | E2 | E3>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
      (...args: ArgsWithCallback<infer _Args2, infer E2, infer _A2>): infer _R2
    } ? NonNullable<E1 | E2>
    : T extends {
      (...args: ArgsWithCallback<infer _Args1, infer E1, infer _A1>): infer _R1
    } ? NonNullable<E1>
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L14955)

Since v4.0.0