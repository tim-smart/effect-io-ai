# validate

Validates that the specified value, if any, matches the specified primitive
type.

To import and use `validate` from the "Primitive" module:

```ts
import * as Primitive from "@effect/cli/Primitive"
// Can be accessed like this
Primitive.validate
```

**Signature**

```ts
export declare const validate: {
  (value: Option<string>, config: CliConfig): <A>(self: Primitive<A>) => Effect<FileSystem, string, A>
  <A>(self: Primitive<A>, value: Option<string>, config: CliConfig): Effect<FileSystem, string, A>
}
```
