Package: `effect`<br />
Module: `Command`<br />

## Command.Command.Variance

Type-level variance marker for `Command`.

**Details**

The parsed input type is contravariant, while the command error and service
requirement types are covariant.

**Signature**

```ts
export interface Variance<in Input, out E, out R> {
    readonly Input: Contravariant<Input>
    readonly E: Covariant<E>
    readonly R: Covariant<R>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L166)

Since v4.0.0