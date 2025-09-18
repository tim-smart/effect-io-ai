Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.ToolsByName

A utility type which can transforms either a record or an array of tools into
a record where keys are tool names and values are the tool instances.

**Signature**

```ts
type ToolsByName<Tools> = Tools extends Record<string, Tool.Any> ?
  { readonly [Name in keyof Tools]: Tools[Name] }
  : Tools extends ReadonlyArray<Tool.Any> ? { readonly [Tool in Tools[number] as Tool["name"]]: Tool }
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L180)

Since v1.0.0