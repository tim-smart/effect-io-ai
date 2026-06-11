Package: `effect`<br />
Module: `Unify`<br />

## Unify.unify

Applies `Unify` to a value or function return type at compile time.

**When to use**

Use to keep a value or function unchanged at runtime while normalizing its
inferred type with Effect's unification protocol.

**Details**

This is an identity function at runtime. For functions, the returned function
has the same runtime behavior while its return type is normalized with the
Effect unification protocol.

**Example** (Unifying values and function results)

```ts
import { Unify } from "effect"

// Unify a simple value
const unifiedValue = Unify.unify("hello")
// Type: string

// Unify a function result
const createUnifiableValue = () => ({
  value: "test",
  [Unify.typeSymbol]: "string" as const,
  [Unify.unifySymbol]: { String: () => "test" as const }
})

const unifiedFunction = Unify.unify(createUnifiableValue)
// The result will be properly unified

// Unify with curried functions
const curriedFunction = (a: string) => (b: number) => ({ result: a + b })
const unifiedCurried = Unify.unify(curriedFunction)
// Type: (a: string) => (b: number) => Unify<{ result: string }>
```

**See**

- `Unify` for the type-level normalization applied by this helper

**Signature**

```ts
declare const unify: { <Args extends Array<any>, Args2 extends Array<any>, Args3 extends Array<any>, Args4 extends Array<any>, Args5 extends Array<any>, T>(x: (...args: Args) => (...args: Args2) => (...args: Args3) => (...args: Args4) => (...args: Args5) => T): (...args: Args) => (...args: Args2) => (...args: Args3) => (...args: Args4) => (...args: Args5) => Unify<T>; <Args extends Array<any>, Args2 extends Array<any>, Args3 extends Array<any>, Args4 extends Array<any>, T>(x: (...args: Args) => (...args: Args2) => (...args: Args3) => (...args: Args4) => T): (...args: Args) => (...args: Args2) => (...args: Args3) => (...args: Args4) => Unify<T>; <Args extends Array<any>, Args2 extends Array<any>, Args3 extends Array<any>, T>(x: (...args: Args) => (...args: Args2) => (...args: Args3) => T): (...args: Args) => (...args: Args2) => (...args: Args3) => Unify<T>; <Args extends Array<any>, Args2 extends Array<any>, T>(x: (...args: Args) => (...args: Args2) => T): (...args: Args) => (...args: Args2) => Unify<T>; <Args extends Array<any>, T>(x: (...args: Args) => T): (...args: Args) => Unify<T>; <T>(x: T): Unify<T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Unify.ts#L274)

Since v2.0.0