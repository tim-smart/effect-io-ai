Package: `effect`<br />
Module: `Match`<br />

## Match.TypeMatcher

Represents a pattern matcher that operates on types rather than specific values.

A `TypeMatcher` is created when using `Match.type<T>()` and allows you to define
patterns that will be applied to values of the specified type. It maintains
type-level information about the input type, applied filters, remaining cases,
and expected results.

**Example**

```ts
import { Match } from "effect"

// Create a TypeMatcher for string | number
const matcher = Match.type<string | number>().pipe(
  Match.when(Match.string, (s) => `String: ${s}`),
  Match.when(Match.number, (n) => `Number: ${n}`),
  Match.exhaustive
)

console.log(matcher("hello")) // "String: hello"
console.log(matcher(42)) // "Number: 42"
```

**Signature**

```ts
export interface TypeMatcher<in Input, out Filters, out Remaining, out Result, out Return = any> extends Pipeable {
  readonly _tag: "TypeMatcher"
  readonly [TypeId]: {
    readonly _input: T.Contravariant<Input>
    readonly _filters: T.Covariant<Filters>
    readonly _remaining: T.Covariant<Remaining>
    readonly _result: T.Covariant<Result>
    readonly _return: T.Covariant<Return>
  }
  readonly cases: ReadonlyArray<Case>
  add<I, R, RA, A>(_case: Case): TypeMatcher<I, R, RA, A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L107)

Since v4.0.0