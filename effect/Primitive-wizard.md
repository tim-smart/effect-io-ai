## wizard

Runs a wizard that will prompt the user for input matching the specified
primitive type.

**Signature**

```ts
declare const wizard: { (help: HelpDoc): <A>(self: Primitive<A>) => Prompt<A>; <A>(self: Primitive<A>, help: HelpDoc): Prompt<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Primitive.ts#L180)

Since v1.0.0