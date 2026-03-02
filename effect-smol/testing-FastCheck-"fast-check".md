Package: `effect`<br />
Module: `FastCheck`<br />

## FastCheck."fast-check"

Re-exports all named exports from the "fast-check" module.

**Example**

```ts
import * as FastCheck from "effect/testing/FastCheck"

// Property: reverse of reverse should equal original
const reverseProp = FastCheck.property(
  FastCheck.array(FastCheck.integer()),
  (arr: Array<number>) => {
    const reversed = arr.slice().reverse()
    const doubleReversed = reversed.slice().reverse()
    return JSON.stringify(arr) === JSON.stringify(doubleReversed)
  }
)

// Run the property test
FastCheck.assert(reverseProp)
```

**Example**

```ts
import * as FastCheck from "effect/testing/FastCheck"

// Test string concatenation properties
const concatProp = FastCheck.property(
  FastCheck.string(),
  FastCheck.string(),
  (a: string, b: string) => {
    const result = a + b
    return result.length === a.length + b.length &&
      result.startsWith(a) &&
      result.endsWith(b)
  }
)

FastCheck.assert(concatProp)
```

**Example**

```ts
import * as FastCheck from "effect/testing/FastCheck"

// Generate random data for testing
const personArbitrary = FastCheck.record({
  name: FastCheck.string({ minLength: 1 }),
  age: FastCheck.integer({ min: 0, max: 120 }),
  email: FastCheck.emailAddress()
})

// Use in property tests
const validPersonProp = FastCheck.property(
  personArbitrary,
  (person: { name: string; age: number; email: string }) => {
    return person.name.length > 0 &&
      person.age >= 0 &&
      person.age <= 120 &&
      person.email.includes("@")
  }
)

FastCheck.assert(validPersonProp)
```

**Signature**

```ts
export * from "fast-check"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FastCheck.ts#L87)

Since v3.10.0