Package: `effect`<br />
Module: `Exit`<br />

## Exit.getOrElse

Returns the `A` if specified exit is a `Success`, otherwise returns the
alternate `A` value computed from the specified function which receives the
`Cause<E>` of the exit `Failure`.

**Signature**

```ts
declare const getOrElse: { <E, A2>(orElse: (cause: Cause.Cause<E>) => A2): <A>(self: Exit<A, E>) => A2 | A; <A, E, A2>(self: Exit<A, E>, orElse: (cause: Cause.Cause<E>) => A2): A | A2; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L252)

Since v2.0.0