# validate

Returns a config that describes the same structure as this one, but which
performs validation during loading.

To import and use `validate` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.validate
```

**Signature**

```ts
export declare const validate: {
  <A, B extends A>(options: {
    readonly message: string
    readonly validation: Refinement<A, B>
  }): (self: Config<A>) => Config<B>
  <A>(options: { readonly message: string; readonly validation: Predicate<A> }): (self: Config<A>) => Config<A>
  <A, B extends A>(
    self: Config<A>,
    options: { readonly message: string; readonly validation: Refinement<A, B> }
  ): Config<B>
  <A>(self: Config<A>, options: { readonly message: string; readonly validation: Predicate<A> }): Config<A>
}
```
