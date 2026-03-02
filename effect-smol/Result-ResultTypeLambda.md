Package: `effect`<br />
Module: `Result`<br />

## Result.ResultTypeLambda

Higher-kinded type representation for `Result`.

Used internally to integrate `Result` with generic type-class utilities
(e.g., `map`, `flatMap` abstractions). You typically do not need to
reference this directly.

**Signature**

```ts
export interface ResultTypeLambda extends TypeLambda {
  readonly type: Result<this["Target"], this["Out1"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L244)

Since v4.0.0