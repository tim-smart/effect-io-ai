Package: `effect`<br />
Module: `Match`<br />

## Match.typeTags

Creates a type-safe match function for discriminated unions based on `_tag` field.

This function allows you to define exhaustive pattern matching for discriminated unions
by providing handlers for each possible `_tag` value. It ensures type safety and
can optionally enforce a specific return type across all branches.

**Example**

```ts
import { Match } from "effect"

type Result =
  | { readonly _tag: "Success"; readonly data: string }
  | { readonly _tag: "Error"; readonly message: string }
  | { readonly _tag: "Loading" }

// Create a matcher with specific return type
const formatResult = Match.typeTags<Result, string>()({
  Success: (result) => `Data: ${result.data}`,
  Error: (result) => `Error: ${result.message}`,
  Loading: () => "Loading..."
})

console.log(formatResult({ _tag: "Success", data: "Hello World" }))
// Output: "Data: Hello World"

console.log(formatResult({ _tag: "Error", message: "Network failed" }))
// Output: "Error: Network failed"

// Create a matcher with inferred return type
const processResult = Match.typeTags<Result>()({
  Success: (result) => ({ type: "ok", value: result.data }),
  Error: (result) => ({ type: "error", error: result.message }),
  Loading: () => ({ type: "pending" })
})

console.log(processResult({ _tag: "Loading" }))
// Output: { type: "pending" }
```

**Signature**

```ts
declare const typeTags: { <I, Ret>(): <P extends { readonly [Tag in Types.Tags<"_tag", I> & string]: (_: Extract<I, { readonly _tag: Tag; }>) => Ret; } & { readonly [Tag in Exclude<keyof P, Types.Tags<"_tag", I>>]: never; }>(fields: P) => (input: I) => Ret; <I>(): <P extends { readonly [Tag in Types.Tags<"_tag", I> & string]: (_: Extract<I, { readonly _tag: Tag; }>) => any; } & { readonly [Tag in Exclude<keyof P, Types.Tags<"_tag", I>>]: never; }>(fields: P) => (input: I) => Unify<ReturnType<P[keyof P]>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L420)

Since v4.0.0