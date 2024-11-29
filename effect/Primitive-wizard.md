# wizard

Runs a wizard that will prompt the user for input matching the specified
primitive type.

To import and use `wizard` from the "Primitive" module:

ts
import \* as Primitive from "@effect/cli/Primitive"
// Can be accessed like this
Primitive.wizard
undefined

**Signature**

```ts
export declare const wizard: {
  (help: HelpDoc): <A>(self: Primitive<A>) => Prompt<A>
  <A>(self: Primitive<A>, help: HelpDoc): Prompt<A>
}
```
