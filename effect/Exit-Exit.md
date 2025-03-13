Package: `effect`<br />
Module: `Exit`<br />

## Exit.Exit

An `Exit<A, E = never>` describes the result of a executing an `Effect` workflow.

There are two possible values for an `Exit<A, E>`:
  - `Exit.Success` contain a success value of type `A`
  - `Exit.Failure` contains a failure `Cause` of type `E`

**Signature**

```ts
type Exit<A, E> = Success<A, E> | Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L26)

Since v2.0.0