Package: `effect`<br />
Module: `Match`<br />

## Match.valueTags

Creates a match function for a specific value with discriminated union handling.

This function provides a convenient way to pattern match on discriminated unions
by providing an object that maps each `_tag` value to its corresponding handler.
It's similar to a switch statement but with better type safety and exhaustiveness checking.

**Example**

```ts
import { Match } from "effect"

type Status = { readonly _tag: "Success"; readonly data: string }

const success: Status = { _tag: "Success", data: "Hello" }

// Simple valueTags usage
const message = Match.valueTags(success, {
  Success: (result) => `Success: ${result.data}`
})

console.log(message) // "Success: Hello"
```

**Signature**

```ts
declare const valueTags: { <const I, P extends { readonly [Tag in Types.Tags<"_tag", I> & string]: (_: Extract<I, { readonly _tag: Tag; }>) => any; } & { readonly [Tag in Exclude<keyof P, Types.Tags<"_tag", I>>]: never; }>(fields: P): (input: I) => Unify<ReturnType<P[keyof P]>>; <const I, P extends { readonly [Tag in Types.Tags<"_tag", I> & string]: (_: Extract<I, { readonly _tag: Tag; }>) => any; } & { readonly [Tag in Exclude<keyof P, Types.Tags<"_tag", I>>]: never; }>(input: I, fields: P): Unify<ReturnType<P[keyof P]>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L362)

Since v4.0.0