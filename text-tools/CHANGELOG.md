## text-tools/0.1.0 (2023-11-25)

### Feat

- **commitizen**: use repo image for commitizen instead of local cache
- **build**: add commitizen version support
- **build/images/debian**: remove debian12.2 variant

### Fix

- **images**: update manifest generation for python images
- **commitizen**: scope working directory only for specific steps
- **renovate**: Don't allow renovate to override the python base image versions

### Refactor

- use github reusable workflow, add text-tools, refactor
- overhauled layout entirely
- **images**: remove unused requirements.txt
- **build/images**: swap cz config
