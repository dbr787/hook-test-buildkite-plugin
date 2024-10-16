# Hook Test Buildkite Plugin

A Buildkite plugin to test running all available [plugin hooks](https://buildkite.com/docs/agent/v3/hooks#job-lifecycle-hooks)

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - label: "Test Plugin Hooks!"
    plugins:
      - dbr787/hook-test: ~
```
